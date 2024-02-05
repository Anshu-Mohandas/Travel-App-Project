import 'package:amish_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewonesectionItemWidget extends StatelessWidget {
  const ChipviewonesectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 27.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "JAN",
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
      selectedColor: theme.colorScheme.onPrimary.withOpacity(1),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.black900.withOpacity(0.1),
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          2.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
