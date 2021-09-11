import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  final String title;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({
    required this.isChecked,
    required this.title,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        longPressCallback();
      },
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          decorationThickness: 2.85,
          fontSize: 20.0,
        ),
      ),
      trailing: Checkbox(
        onChanged: (newValue) {
          checkboxCallback(newValue);
        },
        value: isChecked,
      ),
    );
  }
}
