import 'package:amish_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameFifteenScreen extends StatelessWidget {
  const FrameFifteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          height: 301.v,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
