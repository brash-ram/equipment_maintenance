import 'package:equipment_maintenance/api/table_repository.dart';
import 'package:equipment_maintenance/bloc/bloc_state.dart';
import 'package:equipment_maintenance/bloc/equipment_list_bloc.dart';
import 'package:equipment_maintenance/data/all_data.dart';
import 'package:equipment_maintenance/data/enum/equipment_status_code.dart';
import 'package:equipment_maintenance/logging.dart';
import 'package:equipment_maintenance/widget/model_bloc_data_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paged_datatable/paged_datatable.dart';

class EquipmentTable extends StatefulWidget {
  const EquipmentTable({super.key, required this.values});
  final List<SimpleEquipment> values;

  @override
  State<EquipmentTable> createState() => _EquipmentTableState();
}

class _EquipmentTableState extends State<EquipmentTable> {
  late PagedDataTableController<String, String, SimpleEquipment> tableController;

  @override
  void initState() {
    tableController = PagedDataTableController<String, String, SimpleEquipment>();
    super.initState();
  }

  @override
  void dispose() {
    try {
      tableController.dispose();
    } catch (exception) {
      talker.error("Exception of table library.");
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PagedDataTable<String, String, SimpleEquipment>(
      rowsSelectable: false,
      controller: tableController,
      fetchPage: (pageToken, pageSize, sortBy, filtering) async {
        return context.read<TableRepository>().filtering(
          equipmentList: widget.values,
          pageSize: pageSize,
          pageToken: pageToken,
          sortDescending: sortBy?.descending ?? false,
          code: filtering.valueOrNullAs<String>("code"),
          name: filtering.valueOrNullAs<String>("name"),
          criticality: filtering.valueOrNullAs<String>("criticality"),
          status: filtering.valueOrNullAs<EquipmentStatusCode>("status")
        );
      },
      initialPage: "",
      idGetter: (e) => e.id,
      footer: TextButton(
        onPressed: () async {
          await context.read<EquipmentListBloc>().reset();
        },
        child: const Text("Обновить данные с сервера"),
      ),
      filters: [
        TextTableFilter(
          id: "code",
          title: "Код оборудования",
          chipFormatter: (text) => "Код $text"
        ),
        TextTableFilter(
          id: "name",
          title: "Наименование",
          chipFormatter: (text) => "Наименование $text"
        ),
        DropdownTableFilter<EquipmentStatusCode>(
          id: "status",
          title: "Статус",
          chipFormatter: (status) => 'Статус ${status.name.toLowerCase()}',
          items: const [
            DropdownMenuItem(value: EquipmentStatusCode.installed, child: Text("installed")),
            DropdownMenuItem(value: EquipmentStatusCode.withdrawn, child: Text("withdrawn")),
          ]
        ),
        DropdownTableFilter<String>(
          id: "criticality",
          title: "Критичность",
          chipFormatter: (value) => 'Критичность $value',
          items: ["1", "2", "3", "4", "5"].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList()
        ),
      ],
      menu: PagedDataTableFilterBarMenu(
        items: [
          FilterMenuItem(
            title: const Text("Очистить фильтры"),
            onTap: () {
              tableController.removeFilters();
            },
          ),
        ]
      ),
      columns: [
        TableColumn(
          title: "ID",
          cellBuilder: (item) => Text(item.id.toString()),
          sizeFactor: 0.2,
        ),
        TableColumn(
          id: "code",
          title: "Код оборудования",
          cellBuilder: (item) => Text(item.code),
          sortable: true,
        ),
        LargeTextTableColumn(
          title: "Наименование",
          sizeFactor: 0.3,
          getter: (value) => value.name,
          setter: (value, newValue, rowIndex) => true,
        ),
        TableColumn(
          title: "Статус",
          sizeFactor: 0.149,
          cellBuilder: (item) => SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                color: switch (item.statusCode) {
                  EquipmentStatusCode.installed => Colors.green,
                  EquipmentStatusCode.withdrawn => Colors.grey
                }
              ),
              child: Center(child: Text(item.status))
            ),
          ),
        ),
        TableColumn(
          title: "Критичность",
          sizeFactor: 0.15,
          cellBuilder: (item) => SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                color: switch (item.criticalityCode) {
                  "1"
                  "2" => Colors.green,
                  "3" => Colors.yellow,
                  "4" => Colors.green,
                  "5" => Colors.grey,
                  _ => Colors.grey
                }
              ),
              child: Center(child: Text(item.criticality))
            ),
          ),
        ),
        TableColumn(
          title: "",
          cellBuilder: (item) => SizedBox.expand(
            child: Center(child: ElevatedButton(
              onPressed: () {

              },
              child: const Text(
                "Подробнее",
              ),
            )),
          ),
        ),
      ],
    );
  }
}
