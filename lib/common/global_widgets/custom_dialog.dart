import 'package:flutter/material.dart';

Future<void> customDialog({
  required BuildContext context,
  required String title,
  required String content,
  String? confirmText,
  String? cancelText,
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
}) async {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                if (onCancel != null) {
                  onCancel();
                }
              },
              child: Text(cancelText ?? 'Cancel', style: const TextStyle(color: Colors.red),),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                if (onConfirm != null) {
                  onConfirm();
                }
              },
              child: Text(confirmText ?? 'Ok'),
            ),
        ],
      );
    },
  );
}