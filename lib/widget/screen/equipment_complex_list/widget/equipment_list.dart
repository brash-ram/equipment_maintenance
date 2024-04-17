import 'package:equipment_maintenance/widget/screen/equipment_complex_list/widget/list_item.dart';
import 'package:flutter/material.dart';

import '../../../../bloc/equipment_list_bloc.dart';
import '../../../../data/all_data.dart';
import '../../../model_bloc_data_selector.dart';

class EquipmentList extends StatelessWidget {
  const EquipmentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ModelBlocDataSelector<EquipmentListBloc, List<SimpleEquipment>, List<SimpleEquipment>>(
      selector: (value) => value,
      builder: (context, value) => ListView.builder(
        itemCount: value.length,
        itemBuilder: (BuildContext context, int index) => ListItem(
          index: index
        ),
      ),
    );
  }
}
