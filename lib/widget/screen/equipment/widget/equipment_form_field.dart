import 'package:equipment_maintenance/bloc/equipment_bloc.dart';
import 'package:equipment_maintenance/widget/screen/equipment/widget/equipment_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EquipmentFormField extends StatelessWidget {
  const EquipmentFormField({super.key, required this.fieldName, required this.fieldValue});
  final String fieldName;
  final String? fieldValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              fieldName,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ),
          Expanded(
            flex: 3,
            child: EquipmentTextField(initValue: fieldValue ?? "")
          )
        ],
      ),
    );
  }
}
