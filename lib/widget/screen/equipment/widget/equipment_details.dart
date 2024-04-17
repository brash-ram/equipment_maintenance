import 'package:equipment_maintenance/data/all_data.dart';
import 'package:equipment_maintenance/widget/screen/equipment/widget/equipment_form_field.dart';
import 'package:equipment_maintenance/widget/screen/equipment/widget/equipment_group_title.dart';
import 'package:flutter/material.dart';

import '../../../../bloc/equipment_bloc.dart';
import '../../../../i18n/strings.g.dart';
import '../../../model_bloc_data_selector.dart';
import 'equipment_form_checkbox.dart';

class EquipmentDetails extends StatelessWidget {
  const EquipmentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final translations = Translations.of(context);
    final equipment = translations.equipment;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EquipmentGroupTitle(text: equipment.details.general),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.id,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.id,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.code,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.code,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.name,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.name,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.department?.name,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.department,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.status?.name,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.status,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.hierarchyLevelType?.name,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.hierarchyLevelType,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.costCode?.name,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.costCode,
                fieldValue: value
              )
            ),
            const Divider(),


            EquipmentGroupTitle(text: equipment.details.passport),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.inventoryNumber,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.inventoryNumber,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.model,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.model,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.commissDate,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.commissDate,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.initialValue,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.initialValue,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.serialNumber,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.serialNumber,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.installationDate,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.installationDate,
                fieldValue: value
              )
            ),
            const Divider(),


            EquipmentGroupTitle(text: equipment.details.operatingParameters),
            ModelBlocDataSelector<EquipmentBloc, Equipment, bool?>(
              selector: (value) => value.ecology,
              builder: (context, value) => EquipmentFormCheckbox(
                fieldName: equipment.fields.ecology,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, bool?>(
              selector: (value) => value.safety,
              builder: (context, value) => EquipmentFormCheckbox(
                fieldName: equipment.fields.safety,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.dormantCauseName?.name,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.dormantCauseName,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.dormantStartDate,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.dormantStartDate,
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.dormantEndDate,
              builder: (context, value) => EquipmentFormField(
                fieldName: equipment.fields.dormantEndDate,
                fieldValue: value
              )
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
