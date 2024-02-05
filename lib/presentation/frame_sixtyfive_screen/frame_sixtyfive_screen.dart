import 'package:amish_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameSixtyfiveScreen extends StatelessWidget {
  const FrameSixtyfiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildStackImage(context),
                  SizedBox(height: 13.v),
                  Container(
                      width: double.maxFinite,
                      decoration: AppDecoration.outlineBlack900,
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(text: "                  "),
                            TextSpan(
                                text: "MALDIVES",
                                style: CustomTextStyles
                                    .displaySmallQuintessentialffb98a0f
                                    .copyWith(
                                        decoration: TextDecoration.underline))
                          ]),
                          textAlign: TextAlign.left)),
                  SizedBox(height: 11.v),
                  _buildStackBookNow(context),
                  SizedBox(height: 18.v),
                  Container(
                      height: 301.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          borderRadius: BorderRadius.circular(20.h),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.1),
                              width: 1.h))),
                  SizedBox(height: 55.v),
                  Container(
                      height: 301.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          borderRadius: BorderRadius.circular(20.h),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.1),
                              width: 1.h))),
                  SizedBox(height: 55.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgFrame17,
                      height: 301.v,
                      width: 428.h),
                  SizedBox(height: 56.v)
                ])))));
  }

  /// Section Widget
  Widget _buildStackImage(BuildContext context) {
    return SizedBox(
        height: 301.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 27.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage5,
                            height: 274.v,
                            width: 199.h,
                            radius: BorderRadius.circular(20.h))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgImage5300x430,
              height: 300.v,
              width: 430.h,
              radius: BorderRadius.circular(20.h),
              alignment: Alignment.center)
        ]));
  }

  /// Section Widget
  Widget _buildStackBookNow(BuildContext context) {
    return SizedBox(
        height: 799.v,
        width: 402.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                  onTap: () {
                    onTapOne(context);
                  },
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 89.h, vertical: 35.v),
                      decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 7.v),
                            Text("BOOK NOW",
                                style: theme.textTheme.displaySmall)
                          ])))),
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  width: 388.h,
                  child: Text(
                      "The Maldives, a tropical paradise in the Indian Ocean, beckons with its idyllic white-sand beaches, crystal-clear turquoise waters, and vibrant coral reefs. This island nation experiences a distinct seasonal rhythm, with a dry northeast monsoon from December to March, offering sunny days and calm seas—ideal for underwater adventures and beachside relaxation. The wet southwest monsoon, from May to October, brings occasional rain showers, yet it also ushers in lush greenery and a more tranquil atmosphere. Whether visiting during the dry or wet season, the Maldives promises a captivating escape into a world of natural beauty and aquatic wonders.",
                      maxLines: 20,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: CustomTextStyles.titleLargeQuintessential)))
        ]));
  }

  /// Navigates to the monthScreen when the action is triggered.
  onTapOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.monthScreen);
  }
}
