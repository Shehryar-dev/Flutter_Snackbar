import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class help_snack{
  final String message;

  // Constructor that accepts the message for the Snackbar
  help_snack({required this.message});

  // Method to show the Snackbar
  void show(BuildContext context) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      dismissDirection: DismissDirection.endToStart,
      content: AwesomeSnackbarContent(
        title: 'Help!',
        message: message,
        contentType: ContentType.help,
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
