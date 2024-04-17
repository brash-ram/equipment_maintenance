import 'package:auto_route/auto_route.dart';
import 'package:equipment_maintenance/bloc/equipment_list_bloc.dart';
import 'package:equipment_maintenance/data/all_data.dart';
import 'package:equipment_maintenance/widget/screen/equipment_table/widget/equipment_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model_bloc_data_selector.dart';

@RoutePage()
class EquipmentTableScreen extends StatelessWidget {
  const EquipmentTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: EquipmentListBloc(context.read(),),
      child: Scaffold(
        body: SafeArea(
          child: ModelBlocDataSelector<EquipmentListBloc, List<SimpleEquipment>, List<SimpleEquipment>>(
            selector: (value) => value,
            builder: (context, value) => EquipmentTable(values: value)
          ),
        ),
      ),
    );
  }
}
