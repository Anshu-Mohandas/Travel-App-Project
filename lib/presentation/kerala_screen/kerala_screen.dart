import 'package:amish_s_application1/core/app_export.dart';
import 'package:amish_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class KeralaScreen extends StatelessWidget {
  const KeralaScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 504.h,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage1,
                  height: 301.v,
                  width: 504.h,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                ),
                SizedBox(height: 11.v),
                SizedBox(
                  height: 53.v,
                  width: 288.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Kerala Backwaters",
                          style: CustomTextStyles
                              .displaySmallQuintessentialCyan800,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 4.v),
                          child: SizedBox(
                            width: 288.h,
                            child: Divider(
                              color: appTheme.cyan800,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                Container(
                  width: 438.h,
                  margin: EdgeInsets.only(
                    left: 29.h,
                    right: 36.h,
                  ),
                  child: Text(
                    "Kerala, aptly known as \"God's Own Country,\" is a picturesque gem in southwestern India. This enchanting state boasts pristine beaches, lush landscapes, and a network of backwaters. Nestled between the Arabian Sea and the Western Ghats, Kerala offers a unique blend of tropical beauty, vibrant culture, and diverse wildlife. From the iconic houseboats of Alleppey to the aromatic spice plantations, visitors are treated to an unforgettable journey through a land where nature and tradition harmoniously coexist.",
                    maxLines: 15,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.justify,
                    style: CustomTextStyles.headlineSmallQuintessential,
                  ),
                ),
                SizedBox(height: 2.v),
                CustomElevatedButton(
                  text: "BOOK NOW",
                  margin: EdgeInsets.only(
                    left: 36.h,
                    right: 66.h,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(height: 2.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
