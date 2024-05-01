import 'package:flutter/material.dart';

class ProgressDialogUtils {
  static final ProgressDialogUtils _instance = ProgressDialogUtils.internal();
  static bool _isLoading = false;

  ProgressDialogUtils.internal();

  factory ProgressDialogUtils() => _instance;

  static void dismissProgressDialog(BuildContext context) {
    if (_isLoading) {
       Navigator.of(context).pop();
      _isLoading = false;
    }
  }

  static Future<void> showProgressDialog(BuildContext context) async {
    _isLoading = true;
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
