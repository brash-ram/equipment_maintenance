import 'package:equipment_maintenance/api/api_repository.dart';
import 'package:equipment_maintenance/data/all_data.dart';
import 'package:equipment_maintenance/data/enum/equipment_status_code.dart';
import 'package:paged_datatable/paged_datatable.dart';

typedef FilterFunctionChain = bool Function(SimpleEquipment equipment);

class TableRepository {
  TableRepository();


  PaginationResult<String, SimpleEquipment> filtering({
    required List<SimpleEquipment> equipmentList,
    required int pageSize,
    required String pageToken,
    String? code,
    String? name,
    String? criticality,
    EquipmentStatusCode? status,
    bool sortDescending = false,
  }) {
    List<SimpleEquipment> resultList = List.of(equipmentList);

    FilterFunctionChain chainFilters = _generateFilterFunctionChain(
      code: code,
      name: name,
      criticality: criticality,
      status: status,
    );

    resultList = resultList.where((element) => chainFilters(element)).toList();

    if (sortDescending) {
      resultList.sort((e1, e2) => e2.code.compareTo(e1.code));
    } else {
      resultList.sort((e1, e2) => e1.code.compareTo(e2.code));
    }

    resultList = resultList.take(pageSize + 1).toList();
    String? nextPageToken;
    if (resultList.length == pageSize + 1) {
      var lastPost = resultList.removeLast();
      nextPageToken = lastPost.id.toString();
    }

    return PaginationResult.items(
      elements: resultList,
      nextPageToken: nextPageToken
    );
  }

  FilterFunctionChain _generateFilterFunctionChain({
    String? code,
    String? name,
    String? criticality,
    EquipmentStatusCode? status,
  }) {
    FilterFunctionChain chain = (value) => true;

    if (code != null) {
      chain = _addFilterInChain(chain, (equipment) => equipment.code.toLowerCase().contains(code.toLowerCase()));
    }

    if (criticality != null) {
      chain = _addFilterInChain(chain, (equipment) => equipment.criticalityCode.toLowerCase().contains(criticality.toLowerCase()));
    }

    if (name != null) {
      chain = _addFilterInChain(chain, (equipment) => equipment.name.toLowerCase().contains(name.toLowerCase()));
    }

    if (status != null) {
      chain = _addFilterInChain(chain, (equipment) => equipment.statusCode == status);
    }

    return chain;
  }

  FilterFunctionChain _addFilterInChain(FilterFunctionChain chain, FilterFunctionChain function) {
    return (value) => chain(value) && function(value);
  }
}