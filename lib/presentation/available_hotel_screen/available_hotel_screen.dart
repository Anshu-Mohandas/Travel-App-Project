import 'package:amish_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class AvailableHotelScreen extends StatelessWidget {
  const AvailableHotelScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildCityName(context),
              SizedBox(height: 28.v),
              Text(
                "Hotels Available ",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCityName(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 104.h,
        vertical: 30.v,
      ),
      decoration: AppDecoration.fillBlack,
      child: Column(
        children: [
          SizedBox(height: 7.v),
          Text(
            "City Name",
            style: theme.textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
