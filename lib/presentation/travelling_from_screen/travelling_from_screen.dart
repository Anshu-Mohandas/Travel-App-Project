import 'package:amish_s_application1/core/app_export.dart';
import 'package:amish_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class TravellingFromScreen extends StatelessWidget {
  TravellingFromScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController bengaluruValueController = TextEditingController();

  TextEditingController mumbaiValueController = TextEditingController();

  TextEditingController kolkataValueController = TextEditingController();

  TextEditingController delhiValueController = TextEditingController();

  TextEditingController chennaiValueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildElevenColumn(context),
              Container(
                height: 23.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                "Where are you travelling from?",
                style: theme.textTheme.titleLarge,
              ),
              Spacer(
                flex: 37,
              ),
              _buildBengaluruValue(context),
              SizedBox(height: 17.v),
              _buildMumbaiValue(context),
              SizedBox(height: 23.v),
              _buildKolkataValue(context),
              SizedBox(height: 24.v),
              _buildDelhiValue(context),
              SizedBox(height: 21.v),
              _buildChennaiValue(context),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 46.h),
                  child: Text(
                    "Hyderabad",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Divider(
                indent: 46.h,
                endIndent: 43.h,
              ),
              Spacer(
                flex: 62,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildElevenColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 102.h,
        vertical: 33.v,
      ),
      decoration: AppDecoration.fillBlack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "City Name",
            style: theme.textTheme.displayMedium,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBengaluruValue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 46.h,
        right: 43.h,
      ),
      child: CustomTextFormField(
        controller: bengaluruValueController,
        hintText: "Bengaluru",
      ),
    );
  }

  /// Section Widget
  Widget _buildMumbaiValue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 46.h,
        right: 43.h,
      ),
      child: CustomTextFormField(
        controller: mumbaiValueController,
        hintText: "Mumbai",
      ),
    );
  }

  /// Section Widget
  Widget _buildKolkataValue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 46.h,
        right: 43.h,
      ),
      child: CustomTextFormField(
        controller: kolkataValueController,
        hintText: "Kolkata",
      ),
    );
  }

  /// Section Widget
  Widget _buildDelhiValue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 46.h,
        right: 43.h,
      ),
      child: CustomTextFormField(
        controller: delhiValueController,
        hintText: "Delhi",
      ),
    );
  }

  /// Section Widget
  Widget _buildChennaiValue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 46.h,
        right: 43.h,
      ),
      child: CustomTextFormField(
        controller: chennaiValueController,
        hintText: "Chennai",
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
