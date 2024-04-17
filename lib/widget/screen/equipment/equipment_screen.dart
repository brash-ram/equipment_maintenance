import 'package:auto_route/auto_route.dart';
import 'package:equipment_maintenance/widget/screen/equipment/widget/equipment_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/equipment_bloc.dart';
import '../../../data/all_data.dart';
import '../../model_bloc_data_selector.dart';

@RoutePage()
class EquipmentScreen extends StatelessWidget {
  const EquipmentScreen({super.key, required this.equipmentId, required this.readonly});

  final String equipmentId;
  final bool readonly;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: EquipmentBloc(context.read(), equipmentId, readonly),
      child: Scaffold(
        appBar: AppBar(
          title: ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
            selector: (value) => value.name,
            builder: (context, value) => Text(value ?? "")
          ),
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: EquipmentDetails(),
          ),
        ),
      ),
    );
  }
}
