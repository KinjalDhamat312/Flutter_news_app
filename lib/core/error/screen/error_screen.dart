import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'PAGE NOT FOUND',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
      ),
    ));
  }
}
