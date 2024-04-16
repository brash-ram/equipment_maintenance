import 'package:auto_route/auto_route.dart';
import 'package:equipment_maintenance/bloc/bloc_event.dart';
import 'package:equipment_maintenance/bloc/equipment_list_bloc.dart';
import 'package:equipment_maintenance/data/all_data.dart';
import 'package:equipment_maintenance/widget/screen/equipment_list/widget/equipment_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/bloc_state.dart';
import '../../model_bloc_data_selector.dart';

@RoutePage()
class EquipmentListScreen extends StatelessWidget {
  const EquipmentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: EquipmentListBloc(context.read(),),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ModelBlocDataSelector<EquipmentListBloc, List<SimpleEquipment>, List<SimpleEquipment>>(
            selector: (value) => value,
            builder: (context, value) => EquipmentTable(values: value)
          ),
        ),
      ),
    );
  }
}
