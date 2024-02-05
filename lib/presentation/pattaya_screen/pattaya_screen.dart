import 'package:amish_s_application1/core/app_export.dart';
import 'package:amish_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PattayaScreen extends StatelessWidget {
  const PattayaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage4,
                      height: 301.v,
                      width: 430.h,
                      radius: BorderRadius.circular(20.h)),
                  SizedBox(height: 20.v),
                  Text("PATTAYA",
                      style: CustomTextStyles
                          .displaySmallQuintessentialSecondaryContainer
                          .copyWith(decoration: TextDecoration.underline)),
                  SizedBox(height: 1.v),
                  Container(
                      width: 392.h,
                      margin: EdgeInsets.only(left: 18.h, right: 19.h),
                      child: Text(
                          "Escape to the coastal allure of Pattaya, a captivating resort city on the Gulf of Thailand. Known for its vibrant nightlife, pristine beaches, and exciting water activities, Pattaya is a haven for sun-seekers and adventure enthusiasts alike. Relax on the golden sands of Pattaya Beach or explore the bustling Walking Street, where entertainment options abound. Delve into the fascinating underwater world at the Pattaya Underwater World or experience the thrill of water sports at Jomtien Beach",
                          maxLines: 16,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: CustomTextStyles.headlineSmallQuintessential)),
                  SizedBox(height: 3.v),
                  CustomElevatedButton(
                      text: "BOOK NOW",
                      margin: EdgeInsets.only(left: 11.h, right: 17.h),
                      onPressed: () {
                        onTapBOOKNOW(context);
                      }),
                  SizedBox(height: 37.v),
                  Container(
                      height: 301.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                          borderRadius: BorderRadius.circular(20.h),
                          border: Border.all(
                              color: appTheme.black900.withOpacity(0.1),
                              width: 1.h))),
                  SizedBox(height: 77.v),
                  _buildPattayaSection(context),
                  SizedBox(height: 77.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgFrame17301x427,
                      height: 301.v,
                      width: 427.h),
                  SizedBox(height: 63.v)
                ])))));
  }

  /// Section Widget
  Widget _buildPattayaSection(BuildContext context) {
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
  onTapBOOKNOW(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.monthScreen);
  }
}
