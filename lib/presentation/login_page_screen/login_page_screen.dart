import 'package:amish_s_application1/core/app_export.dart';
import 'package:amish_s_application1/widgets/custom_outlined_button.dart';
import 'package:amish_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key}) : super(key: key);

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

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
                        child: SizedBox(
                            height: 940.v,
                            width: double.maxFinite,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          right: 167.h, bottom: 390.v),
                                      child: Text("--or--",
                                          style: CustomTextStyles
                                              .titleLargeRegular))),
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 925.v,
                                      width: double.maxFinite,
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgPexelsVictorLavaud3361480,
                                                height: 925.v,
                                                width: 430.h,
                                                alignment: Alignment.center),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 68.h,
                                                        right: 59.h,
                                                        bottom: 119.v),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text("Login",
                                                              style: CustomTextStyles
                                                                  .displaySmallInterBlack900),
                                                          SizedBox(
                                                              height: 13.v),
                                                          _buildConnectWithFacebookButton(
                                                              context),
                                                          SizedBox(height: 8.v),
                                                          _buildConnectWithGoogleButton(
                                                              context),
                                                          SizedBox(
                                                              height: 40.v),
                                                          _buildEmailEditText(
                                                              context),
                                                          SizedBox(height: 8.v),
                                                          _buildPasswordEditText(
                                                              context),
                                                          SizedBox(height: 9.v),
                                                          _buildLogInButton(
                                                              context),
                                                          SizedBox(
                                                              height: 14.v),
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtIVeForgottenMy(
                                                                    context);
                                                              },
                                                              child: Text(
                                                                  "I’ve Forgotten my Password!",
                                                                  style: CustomTextStyles
                                                                      .titleLargeYellowA200)),
                                                          SizedBox(
                                                              height: 11.v),
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtNewUserSignUp(
                                                                    context);
                                                              },
                                                              child: Text(
                                                                  "New User? Sign Up!",
                                                                  style: CustomTextStyles
                                                                      .titleLargeYellowA200))
                                                        ])))
                                          ])))
                            ])))))));
  }

  /// Section Widget
  Widget _buildConnectWithFacebookButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "Connect with Facebook",
        margin: EdgeInsets.only(left: 13.h, right: 12.h));
  }

  /// Section Widget
  Widget _buildConnectWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "Connect with Google",
        margin: EdgeInsets.only(left: 13.h, right: 12.h),
        buttonStyle: CustomButtonStyles.outlineIndigoTL13,
        buttonTextStyle: CustomTextStyles.titleLargeSemiBold);
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 12.h),
        child: CustomTextFormField(
            controller: emailEditTextController,
            hintText: "Your email address",
            hintStyle: CustomTextStyles.titleLargeBlack900,
            textInputType: TextInputType.emailAddress));
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 12.h),
        child: CustomTextFormField(
            controller: passwordEditTextController,
            hintText: "Your Password",
            hintStyle: CustomTextStyles.titleLargeBlack900Regular,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildLogInButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 47.v,
        width: 103.h,
        text: "Log In",
        buttonStyle: CustomButtonStyles.outlineBlack,
        buttonTextStyle: CustomTextStyles.headlineSmallRegular,
        onPressed: () {
          onTapLogInButton(context);
        });
  }

  /// Navigates to the exploringPackagesScreen when the action is triggered.
  onTapLogInButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.exploringPackagesScreen);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtIVeForgottenMy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapTxtNewUserSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
