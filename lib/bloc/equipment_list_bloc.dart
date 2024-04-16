import 'package:equipment_maintenance/data/all_data.dart';

import '../api/api_repository.dart';
import 'model_bloc.dart';


class EquipmentListBloc extends ModelBloc<List<SimpleEquipment>> {
  EquipmentListBloc(this.api);

  final ApiRepository api;

  @override
  Stream<List<SimpleEquipment>> get dataStream => api.getEquipmentList();

  @override
  Future<void> fetchNewData() async => api.fetchEquipmentList();
}
