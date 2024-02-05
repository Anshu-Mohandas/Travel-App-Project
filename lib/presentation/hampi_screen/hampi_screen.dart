import 'package:amish_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class HampiScreen extends StatelessWidget {
  const HampiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage3301x430,
                      height: 301.v,
                      width: 430.h,
                      radius: BorderRadius.circular(20.h)),
                  SizedBox(height: 7.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(text: "              "),
                        TextSpan(
                            text: "HAMPI",
                            style: CustomTextStyles
                                .displaySmallQuintessentialff875407
                                .copyWith(decoration: TextDecoration.underline))
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 12.v),
                  Container(
                      width: 391.h,
                      margin: EdgeInsets.only(left: 20.h, right: 18.h),
                      child: Text(
                          "Discover the enchanting ruins of Hampi in the heart of Karnataka, India. A UNESCO World Heritage Site, Hampi transports you back in time to the glory of the Vijayanagara Empire. Wander through the ancient streets of Hampi Bazaar, marvel at the intricate carvings of Virupaksha Temple, and be captivated by the musical pillars of Vitthala Temple. Explore the regal Elephant Stables, admire the Lotus Mahal's unique architecture, and soak in the panoramic views from Hemakuta Hill.",
                          maxLines: 17,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: CustomTextStyles.headlineSmallQuintessential)),
                  SizedBox(height: 4.v),
                  _buildBookingSection(context),
                  SizedBox(height: 31.v),
                  Container(
                      height: 301.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          borderRadius: BorderRadius.circular(20.h),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.1),
                              width: 1.h))),
                  SizedBox(height: 72.v),
                  Container(
                      height: 301.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          borderRadius: BorderRadius.circular(20.h),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.1),
                              width: 1.h))),
                  SizedBox(height: 63.v),
                  _buildViewSection(context),
                  SizedBox(height: 60.v)
                ])))));
  }

  /// Section Widget
  Widget _buildBookingSection(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapBookingSection(context);
        },
        child: Container(
            width: 402.h,
            margin: EdgeInsets.symmetric(horizontal: 14.h),
            padding: EdgeInsets.symmetric(horizontal: 87.h, vertical: 37.v),
            decoration: AppDecoration.fillPrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Text("BOOK NOW", style: theme.textTheme.displaySmall)
                ])));
  }

  /// Section Widget
  Widget _buildViewSection(BuildContext context) {
    return Container(
        height: 301.v,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
            borderRadius: BorderRadius.circular(20.h),
            border: Border.all(
                color: appTheme.black900.withOpacity(0.1), width: 1.h)));
  }

  /// Navigates to the monthScreen when the action is triggered.
  onTapBookingSection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.monthScreen);
  }
}
