import 'package:equipment_maintenance/data/all_data.dart';
import 'package:equipment_maintenance/widget/screen/equipment/widget/equipment_form_field.dart';
import 'package:equipment_maintenance/widget/screen/equipment/widget/equipment_group_title.dart';
import 'package:flutter/material.dart';

import '../../../../bloc/equipment_bloc.dart';
import '../../../model_bloc_data_selector.dart';
import 'equipment_form_checkbox.dart';

class EquipmentDetails extends StatelessWidget {
  const EquipmentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const EquipmentGroupTitle(text: "Общие данные"),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.id,
              builder: (context, value) => EquipmentFormField(
                fieldName: "ID",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.code,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Код",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.name,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Наименование",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.department?.name,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Отдел",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.status?.name,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Статус",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.hierarchyLevelType?.name,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Тип актива в структуре",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.costCode?.name,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Код затрат",
                fieldValue: value
              )
            ),
            const Divider(),


            const EquipmentGroupTitle(text: "Паспорт"),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.inventoryNumber,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Инвентарный номер",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.model,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Модель",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.commissDate,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Дата ввода в эксплуатацию",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.initialValue,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Первичная стоимость",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.serialNumber,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Серийный номер",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.installationDate,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Дата установки",
                fieldValue: value
              )
            ),
            const Divider(),


            const EquipmentGroupTitle(text: "Параметры эксплуатации"),
            ModelBlocDataSelector<EquipmentBloc, Equipment, bool?>(
              selector: (value) => value.ecology,
              builder: (context, value) => EquipmentFormCheckbox(
                fieldName: "Экология",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, bool?>(
              selector: (value) => value.safety,
              builder: (context, value) => EquipmentFormCheckbox(
                fieldName: "Безопасность",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.dormantCauseName?.name,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Причина остановки",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.dormantStartDate,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Начало неактивности",
                fieldValue: value
              )
            ),
            ModelBlocDataSelector<EquipmentBloc, Equipment, String?>(
              selector: (value) => value.dormantEndDate,
              builder: (context, value) => EquipmentFormField(
                fieldName: "Окончание неактивности",
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
