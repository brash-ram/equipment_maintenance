import 'package:equipment_maintenance/bloc/equipment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EquipmentTextField extends StatefulWidget {
  const EquipmentTextField({super.key, required this.initValue});
  final String initValue;

  @override
  State<EquipmentTextField> createState() => _EquipmentTextFieldState();
}

class _EquipmentTextFieldState extends State<EquipmentTextField> {
  final _controller = TextEditingController();


  @override
  void initState() {
    _controller.text = widget.initValue;
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      readOnly: BlocProvider.of<EquipmentBloc>(context).readonly,
    );
  }
}
