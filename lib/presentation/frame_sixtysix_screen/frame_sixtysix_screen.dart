import 'package:amish_s_application1/core/app_export.dart';
import 'package:amish_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FrameSixtysixScreen extends StatelessWidget {
  const FrameSixtysixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildStackImage(context),
                  Text("HOKKAIDO",
                      style:
                          CustomTextStyles.displaySmallQuintessentialGreen800),
                  SizedBox(
                      width: 200.h, child: Divider(color: appTheme.green800)),
                  SizedBox(height: 16.v),
                  Container(
                      width: 402.h,
                      margin: EdgeInsets.only(left: 12.h, right: 15.h),
                      child: Text(
                          "Tokyo, Japan's bustling metropolis, surprises with its serene natural escapes like Shinjuku Gyoen and Ueno Park. Amidst the city's vibrant energy, these green havens offer a peaceful retreat with cherry blossoms and tranquil ponds. Adding to Tokyo's allure is the convenience of a visitor-friendly visa-on-arrival process, making it effortlessly accessible for travelers eager to explore a harmonious blend of urban marvels and natural beauty.",
                          maxLines: 14,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: CustomTextStyles.headlineSmallQuintessential)),
                  SizedBox(height: 1.v),
                  CustomElevatedButton(
                      text: "BOOK NOW",
                      margin: EdgeInsets.symmetric(horizontal: 14.h),
                      onPressed: () {
                        onTapBOOKNOW(context);
                      }),
                  SizedBox(height: 1.v)
                ])))));
  }

  /// Section Widget
  Widget _buildStackImage(BuildContext context) {
    return SizedBox(
        height: 301.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFrame14,
              height: 301.v,
              width: 429.h,
              alignment: Alignment.center),
          Opacity(
              opacity: 0.99,
              child: CustomImageView(
                  imagePath: ImageConstant.imgImage3301x429,
                  height: 301.v,
                  width: 429.h,
                  radius: BorderRadius.circular(12.h),
                  alignment: Alignment.center))
        ]));
  }

  /// Navigates to the monthScreen when the action is triggered.
  onTapBOOKNOW(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.monthScreen);
  }
}
