import 'package:equipment_maintenance/data/enum/equipment_status_code.dart';
import 'package:equipment_maintenance/widget/screen/equipment/widget/equipment_details.dart';
import 'package:equipment_maintenance/widget/screen/equipment_complex_list/widget/equipment_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/bloc_state.dart';
import '../../../../bloc/equipment_bloc.dart';
import '../../../../bloc/equipment_list_bloc.dart';
import '../../../../data/all_data.dart';
import '../../../model_bloc_data_selector.dart';

class ComplexList extends StatefulWidget {
  const ComplexList({super.key});

  @override
  State<ComplexList> createState() => _ComplexListState();
}

class _ComplexListState extends State<ComplexList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: EquipmentList()
        ),
        Expanded(
          flex: 3,
          child: ModelBlocDataSelector<EquipmentListBloc, List<SimpleEquipment>, List<SimpleEquipment>>(
            selector: (value) => value,
            builder: (context, value) {
              final selected = value.where((element) => element.selected).firstOrNull ?? value.first;
              return BlocProvider.value(
                value: EquipmentBloc(
                  context.read(),
                  selected.id,
                  selected.statusCode == EquipmentStatusCode.withdrawn
                ),
                child: const EquipmentDetails(),
              );
            }
          ),
        ),
      ],
    );
  }
}
