import 'package:amish_s_application1/core/app_export.dart';
import 'package:amish_s_application1/widgets/custom_elevated_button.dart';
import 'package:amish_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 18.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  padding: EdgeInsets.only(
                                      left: 29.h, top: 67.v, right: 29.h),
                                  child: Column(children: [
                                    Text("Forgot password".toUpperCase(),
                                        style: CustomTextStyles
                                            .displaySmallInterBlack90034),
                                    SizedBox(height: 172.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 31.h),
                                            child: Text(
                                                "        New password"
                                                    .toUpperCase(),
                                                style: theme
                                                    .textTheme.bodyMedium))),
                                    Divider(indent: 30.h, endIndent: 14.h),
                                    SizedBox(height: 37.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 28.h, right: 16.h),
                                        child: CustomTextFormField(
                                            controller:
                                                confirmpasswordController,
                                            hintText: "Confirm password"
                                                .toUpperCase(),
                                            hintStyle:
                                                theme.textTheme.bodyMedium!,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            obscureText: true)),
                                    SizedBox(height: 98.v),
                                    CustomElevatedButton(
                                        height: 47.v,
                                        width: 103.h,
                                        text: "login".toUpperCase(),
                                        buttonStyle:
                                            CustomButtonStyles.fillTeal,
                                        buttonTextStyle:
                                            theme.textTheme.bodyLarge!,
                                        onPressed: () {
                                          onTapLogin(context);
                                        }),
                                    SizedBox(height: 98.v)
                                  ]))))
                    ])))));
  }

  /// Navigates to the exploringPackagesScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.exploringPackagesScreen);
  }
}
