import 'package:flutter/material.dart';

class BottomSheetScreen extends StatelessWidget {
  final Function addToTasks;
  BottomSheetScreen({this.addToTasks});
  @override
  Widget build(BuildContext context) {
    String task;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              minLines: 1,
              maxLengthEnforced: false,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                    width: 5,
                  ),
                ),
              ),
              onChanged: (value) => task = value,
            ),
            SizedBox(
              height: 35,
            ),
            FlatButton(
              onPressed: () {
                addToTasks(task);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(fontSize: 20),
              ),
              padding: EdgeInsets.symmetric(vertical: 15),
              textColor: Colors.white,
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
