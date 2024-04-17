import 'package:equipment_maintenance/widget/screen/equipment/widget/equipment_text_field.dart';
import 'package:flutter/material.dart';

class EquipmentFormField extends StatelessWidget {
  const EquipmentFormField({super.key, required this.fieldName, required this.fieldValue});
  final String fieldName;
  final String? fieldValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            fieldName,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          EquipmentTextField(initValue: fieldValue ?? "")
        ],
      ),
    );
  }
}
