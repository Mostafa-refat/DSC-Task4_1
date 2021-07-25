import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed:  () {
      Navigator.pop(context);
    },
  );
  Widget okButton = TextButton(
    child: Text("Ok"),
    onPressed:  () {
      Navigator.pop(context);
      Future.delayed(Duration(milliseconds: 500)).then((value) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Logged In!'),
            action: SnackBarAction(
              label: 'Action',
              onPressed: () {
                // Code to execute.
              },
            ),
          ),
        );
      });


    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("AlertDialog"),
    content: Text("Are you sure you want to sign in?"),
    actions: [
      cancelButton,
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}