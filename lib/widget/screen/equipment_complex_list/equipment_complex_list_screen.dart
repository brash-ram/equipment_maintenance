import 'package:auto_route/auto_route.dart';
import 'package:equipment_maintenance/widget/screen/equipment_complex_list/widget/complex_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/equipment_list_bloc.dart';

@RoutePage()
class EquipmentComplexListScreen extends StatelessWidget {
  const EquipmentComplexListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: EquipmentListBloc(context.read(),),
      child: const Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: ComplexList(),
          ),
        ),
      ),
    );
  }
}
