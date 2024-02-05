import '../month_screen/widgets/chipviewonesection_item_widget.dart';
import '../month_screen/widgets/chipviewtwosection_item_widget.dart';
import 'package:amish_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class MonthScreen extends StatelessWidget {
  const MonthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildCityNameSection(context),
                      SizedBox(height: 28.v),
                      Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: Text("When are you planning to travel?",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 75.v),
                      _buildChipViewOneSection(context),
                      SizedBox(height: 81.v),
                      _buildChipViewTwoSection(context),
                      SizedBox(height: 80.v),
                      Padding(
                          padding: EdgeInsets.only(left: 45.h, right: 62.h),
                          child: Row(children: [
                            GestureDetector(
                                onTap: () {
                                  onTapFrameThirtySix(context);
                                },
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 24.h, vertical: 26.v),
                                    decoration: AppDecoration.outlineBlack
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder2),
                                    child: Text("JUL",
                                        style: theme.textTheme.titleLarge))),
                            Spacer(),
                            GestureDetector(
                                onTap: () {
                                  onTapFrameThirtySeven(context);
                                },
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20.h, vertical: 26.v),
                                    decoration: AppDecoration.outlineBlack
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder2),
                                    child: Text("AUG",
                                        style: theme.textTheme.titleLarge))),
                            GestureDetector(
                                onTap: () {
                                  onTapFrameThirtyEight(context);
                                },
                                child: Container(
                                    margin: EdgeInsets.only(left: 17.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 24.h, vertical: 26.v),
                                    decoration: AppDecoration.outlineBlack
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder2),
                                    child: Text("SEP",
                                        style: theme.textTheme.titleLarge)))
                          ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildCityNameSection(BuildContext context) {
    return SizedBox(
        height: 140.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 104.h, vertical: 30.v),
                  decoration: AppDecoration.fillBlack,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 7.v),
                    Text("City Name", style: theme.textTheme.displayMedium)
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 23.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: appTheme.blueGray100))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Text("MONTH", style: theme.textTheme.titleLarge))
        ]));
  }

  /// Section Widget
  Widget _buildChipViewOneSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 45.h),
        child: Wrap(
            runSpacing: 25.v,
            spacing: 25.h,
            children: List<Widget>.generate(
                3, (index) => ChipviewonesectionItemWidget())));
  }

  /// Section Widget
  Widget _buildChipViewTwoSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 45.h),
        child: Wrap(
            runSpacing: 25.v,
            spacing: 25.h,
            children: List<Widget>.generate(
                3, (index) => ChipviewtwosectionItemWidget())));
  }

  /// Navigates to the dayScreen when the action is triggered.
  onTapFrameThirtySix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dayScreen);
  }

  /// Navigates to the dayScreen when the action is triggered.
  onTapFrameThirtySeven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dayScreen);
  }

  /// Navigates to the dayScreen when the action is triggered.
  onTapFrameThirtyEight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dayScreen);
  }
}
