import 'package:equipment_maintenance/widget/components/app_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/equipment_bloc.dart';

class EquipmentFormCheckbox extends StatelessWidget {
  const EquipmentFormCheckbox({super.key, required this.fieldName, this.fieldValue});

  final String fieldName;
  final bool? fieldValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              fieldName,
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ),
          Expanded(
            flex: 3,
            child: AppCheckbox(
              checked: fieldValue ?? false,
              readonly: BlocProvider.of<EquipmentBloc>(context).readonly,
            )
          )
        ],
      ),
    );
  }
}
