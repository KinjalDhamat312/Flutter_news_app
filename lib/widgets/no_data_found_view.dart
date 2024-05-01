import 'package:flutter/material.dart';

class NoDataFoundView extends StatelessWidget {
  final String? message;
  const NoDataFoundView({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message ?? "No news found"));
  }
}
