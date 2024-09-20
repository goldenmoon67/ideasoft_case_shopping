import 'package:flutter/material.dart';

class AppDialogOptions {
  final String message;
  final List<AppDialogAction> actions;

  AppDialogOptions({required this.message, required this.actions});
}

class AppDialogAction {
  final String title;
  final VoidCallback onPressed;

  AppDialogAction({required this.title, required this.onPressed});
}

class AppDialog {
  static Future<void> w(BuildContext context,
      {required AppDialogOptions options}) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(options.message),
          actions: options.actions
              .map(
                (action) => TextButton(
                  onPressed: () {
                    action.onPressed();
                    Navigator.of(context).pop();
                  },
                  child: Text(action.title),
                ),
              )
              .toList(),
        );
      },
    );
  }

  static Future<void> i(BuildContext context,
      {required AppDialogOptions options}) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(options.message),
          actions: options.actions
              .map(
                (action) => TextButton(
                  onPressed: () {
                    action.onPressed();
                    Navigator.of(context).pop();
                  },
                  child: Text(action.title),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
