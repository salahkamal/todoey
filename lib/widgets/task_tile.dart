import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    @required this.title,
    @required this.selected,
    @required this.toggleCheckedbox,
  });

  final String title;
  final Function toggleCheckedbox;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: selected,
      onChanged: toggleCheckedbox,
      title: Text(
        title,
        style: TextStyle(
            decoration:
                selected ? TextDecoration.lineThrough : TextDecoration.none,
            decorationThickness: 2,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
