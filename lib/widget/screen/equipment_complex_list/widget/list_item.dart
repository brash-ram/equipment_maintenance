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
    bool isSelected = BlocProvider.of<EquipmentListBloc>(context).state.value![index].selected;
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
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 1,
                child: ModelBlocDataSelector<EquipmentListBloc, List<SimpleEquipment>, List<SimpleEquipment>>(
                  selector: (value) => value,
                  builder: (context, value) => Text(
                    value[index].code,
                    style: textTheme,
                  )
                ),
              ),
              const SizedBox(width: 8.0,),
              Expanded(
                flex: 5,
                child: ModelBlocDataSelector<EquipmentListBloc, List<SimpleEquipment>, List<SimpleEquipment>>(
                  selector: (value) => value,
                  builder: (context, value) => Text(
                    value[index].name,
                    style: textTheme,
                  )
                ),
              ),
            ],
          ),
          ModelBlocDataSelector<EquipmentListBloc, List<SimpleEquipment>, List<SimpleEquipment>>(
            selector: (value) => value,
            builder: (context, value) => Text(
              value[index].status,
              style: textTheme,
            )
          ),
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
