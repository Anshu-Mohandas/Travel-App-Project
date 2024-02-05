import 'package:amish_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExploringpackagessectionItemWidget extends StatelessWidget {
  ExploringpackagessectionItemWidget({
    Key? key,
    this.onTapImgNorthernLights,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgNorthernLights;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 95.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgNorthernLights,
        height: 73.v,
        width: 95.h,
        radius: BorderRadius.circular(
          10.h,
        ),
        margin: EdgeInsets.only(bottom: 1.v),
        onTap: () {
          onTapImgNorthernLights!.call();
        },
      ),
    );
  }
}
