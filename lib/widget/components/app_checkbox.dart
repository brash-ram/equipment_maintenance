import 'package:flutter/material.dart';

class AppCheckbox extends StatefulWidget {
  const AppCheckbox({super.key, required this.checked, required this.readonly});
  final bool checked;
  final bool readonly;

  @override
  State<AppCheckbox> createState() => _AppCheckboxState();
}

class _AppCheckboxState extends State<AppCheckbox> {
  bool? checked;


  @override
  void initState() {
    checked = widget.checked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checked,
      onChanged: widget.readonly ? null : (value) {
        setState(() {
          checked = value;
        });
      }
    );
  }
}
