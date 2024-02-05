import 'package:amish_s_application1/core/app_export.dart';
import 'package:amish_s_application1/widgets/custom_elevated_button.dart';
import 'package:amish_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 44.h, vertical: 64.v),
                            child: Column(children: [
                              Text("Profile".toUpperCase(),
                                  style: CustomTextStyles
                                      .displaySmallInterBlack90034),
                              SizedBox(height: 42.v),
                              Container(
                                  height: 131.v,
                                  width: 133.h,
                                  decoration: BoxDecoration(
                                      color: appTheme.blueGray100,
                                      borderRadius:
                                          BorderRadius.circular(66.h))),
                              SizedBox(height: 57.v),
                              _buildEmail(context),
                              SizedBox(height: 39.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text("username".toUpperCase(),
                                          style: theme.textTheme.bodyMedium))),
                              Divider(indent: 16.h),
                              SizedBox(height: 36.v),
                              _buildPassword(context),
                              SizedBox(height: 37.v),
                              _buildConfirmpassword(context),
                              Spacer(flex: 37),
                              _buildSignUp(context),
                              Spacer(flex: 62)
                            ])))))));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: CustomTextFormField(
            controller: emailController,
            hintText: "Email Address".toUpperCase(),
            hintStyle: theme.textTheme.bodyMedium!,
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.symmetric(horizontal: 2.h)));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: CustomTextFormField(
            controller: passwordController,
            hintText: "password".toUpperCase(),
            hintStyle: theme.textTheme.bodyMedium!,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 1.h)));
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: CustomTextFormField(
            controller: confirmpasswordController,
            hintText: "Confirm password".toUpperCase(),
            hintStyle: theme.textTheme.bodyMedium!,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        height: 47.v,
        width: 103.h,
        text: "sign up".toUpperCase(),
        buttonStyle: CustomButtonStyles.fillTeal,
        buttonTextStyle: theme.textTheme.bodyLarge!,
        onPressed: () {
          onTapSignUp(context);
        });
  }

  /// Navigates to the exploringPackagesScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.exploringPackagesScreen);
  }
}
