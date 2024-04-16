import 'package:equipment_maintenance/data/all_data.dart';

import '../api/api_repository.dart';
import 'model_bloc.dart';


class EquipmentBloc extends ModelBloc<Equipment> {
  EquipmentBloc(this.api, this.id, this.readonly);

  final ApiRepository api;
  final String id;
  final bool readonly;

  @override
  Stream<Equipment> get dataStream => api.getEquipment(id);

  @override
  Future<void> fetchNewData() async => api.fetchEquipment(id);
}
