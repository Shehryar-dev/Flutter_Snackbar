import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class Warn_snack{
  final String message;

  // Constructor that accepts the message for the Snackbar
  Warn_snack({required this.message});

  void show(BuildContext context) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      dismissDirection: DismissDirection.endToStart,
      content: AwesomeSnackbarContent(
        title: 'Warning',
        message: message,
        contentType: ContentType.warning,
      ),
    );
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
