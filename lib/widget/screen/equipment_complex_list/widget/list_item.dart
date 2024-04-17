import 'package:equipment_maintenance/bloc/bloc_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/equipment_list_bloc.dart';
import '../../../../data/all_data.dart';
import '../../../model_bloc_data_selector.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final state = BlocProvider.of<EquipmentListBloc>(context).state;
    bool isSelected = state.value![index].selected ||
        ((state.value?.where((element) => element.selected).isEmpty ?? true) &&
        index == 0);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme.bodyMedium?.copyWith(
      color: isSelected ? theme.colorScheme.onPrimary : Colors.black,
    );
    return ListTile(
      tileColor: isSelected ? theme.colorScheme.primary : theme.colorScheme.surface,
      onTap: () {
        final bloc =  BlocProvider.of<EquipmentListBloc>(context);
        var selected = bloc.state.value!.where((element) => element.selected).firstOrNull;
        if (selected != null) {
          selected.selected = false;
        }
        bloc.state.value![index].selected = true;
        bloc.add(BlocUpdateEvent([...bloc.state.value!]));
      },
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ModelBlocDataSelector<EquipmentListBloc, List<SimpleEquipment>, List<SimpleEquipment>>(
            selector: (value) => value,
            builder: (context, value) => Text(
              value[index].code,
              style: textTheme?.copyWith(
                fontWeight: FontWeight.bold
              ),
            )
          ),
          ModelBlocDataSelector<EquipmentListBloc, List<SimpleEquipment>, List<SimpleEquipment>>(
            selector: (value) => value,
            builder: (context, value) => Text(
              value[index].name,
              style: textTheme,
            )
          ),
          const SizedBox(height: 4.0,),
          ModelBlocDataSelector<EquipmentListBloc, List<SimpleEquipment>, List<SimpleEquipment>>(
            selector: (value) => value,
            builder: (context, value) => Text(
              value[index].status,
              style: textTheme,
            )
          ),
          const SizedBox(height: 4.0,),
          ModelBlocDataSelector<EquipmentListBloc, List<SimpleEquipment>, List<SimpleEquipment>>(
            selector: (value) => value,
            builder: (context, value) => Text(
              value[index].criticality,
              style: textTheme,
            )
          ),
        ],
      ),
    );
  }
}
