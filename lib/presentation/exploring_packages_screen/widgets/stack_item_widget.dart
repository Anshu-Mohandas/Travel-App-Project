import 'package:amish_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StackItemWidget extends StatelessWidget {
  const StackItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73.v,
      width: 95.h,
      margin: EdgeInsets.only(bottom: 13.v),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Opacity(
        opacity: 0.99,
        child: CustomImageView(
          imagePath: ImageConstant.imgImage673x93,
          height: 73.v,
          width: 93.h,
          radius: BorderRadius.circular(
            10.h,
          ),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
