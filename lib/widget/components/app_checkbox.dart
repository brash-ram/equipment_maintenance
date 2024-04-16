import 'package:flutter/material.dart';

class AppCheckbox extends StatefulWidget {
  const AppCheckbox({super.key, required this.checked});
  final bool checked;

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
      onChanged: (value) {
        setState(() {
          checked = value;
        });
      }
    );
  }
}
