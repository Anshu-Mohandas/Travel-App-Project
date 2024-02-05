import '../exploring_packages_screen/widgets/exploringpackagessection_item_widget.dart';
import '../exploring_packages_screen/widgets/stack_item_widget.dart';
import 'package:amish_s_application1/core/app_export.dart';
import 'package:amish_s_application1/widgets/custom_outlined_button.dart';
import 'package:amish_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class WanderlustSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 403.v,
      width: double.maxFinite,
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: 348.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              CustomImageView(
                imagePath: ImageConstant.imgPexelsAhmedMuntasir912050,
                height: 348.v,
                width: 430.h,
                radius: BorderRadius.only(
                  topLeft: Radius.circular(17.h),
                  topRight: Radius.circular(17.h),
                  bottomLeft: Radius.circular(45.h),
                  bottomRight: Radius.circular(45.h),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Opacity(
                  opacity: 0.7,
                  child: Container(
                    width: 366.h,
                    margin: EdgeInsets.only(bottom: 102.v),
                    child: Text(
                      "Unleash your wanderlust! Effortless travel planning for unforgettable journeys",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.headlineSmallOnPrimary,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
        CustomOutlinedButton(
          height: 76.v,
          width: 255.h,
          text: "Plan Your Trip",
          buttonStyle: CustomButtonStyles.outlineBlackTL30,
          buttonTextStyle: CustomTextStyles.headlineSmallSemiBold,
          alignment: Alignment.bottomCenter,
        ),
      ]),
    );
  }
}

class ExplorePackagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 1.v, bottom: 9.v),
              decoration: BoxDecoration(
                color: appTheme.blueGray100,
                borderRadius: BorderRadius.circular(10.h),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.v, bottom: 17.v),
              child: SizedBox(width: 58.h, child: Divider(indent: 8.h)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Text(
                "Explore Packages",
                style: CustomTextStyles.headlineSmallExtraLight,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.v, bottom: 17.v),
              child: SizedBox(width: 58.h, child: Divider(indent: 8.h)),
            ),
            Container(
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(left: 8.h, top: 1.v, bottom: 9.v),
              decoration: BoxDecoration(
                color: appTheme.blueGray100,
                borderRadius: BorderRadius.circular(10.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DiscoverYourHavenSection extends StatelessWidget {
  final TextEditingController searchController;

  const DiscoverYourHavenSection({Key? key, required this.searchController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 56.v,
        width: 389.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: Text(
                "Discover Your Haven",
                style: CustomTextStyles.titleLargeExtraLight,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: CustomSearchView(
              width: 389.h,
              controller: searchController,
              alignment: Alignment.center,
            ),
          ),
        ]),
      ),
    );
  }
}

class RecommendedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22.h, right: 38.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recommended", style: theme.textTheme.headlineSmall),
          SizedBox(height: 16.v),
          SizedBox(
            height: 100.v,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                final imagePath =
                    'assets/images/recommended${index + 1}.jpg';

                return _buildImageWithExploreButton(
                  imagePath: imagePath,
                  onTap: () {
                    // Add your action when Explore button is tapped
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageWithExploreButton({
    required String imagePath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 80.v,
            width: 80.v,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8.h),
            ),
          ),
          SizedBox(height: 8.v),
          ElevatedButton(
            onPressed: onTap,
            child: Text("Explore"),
          ),
        ],
      ),
    );
  }
}


class SeasonalSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 113.v,
        width: 402.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text("Seasonal", style: theme.textTheme.headlineSmall),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 14.v),
              child: SizedBox(width: 269.h, child: Divider(endIndent: 29.h)),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(
                  height: 86.v,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16.h);
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return StackItemWidget();
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(width: 72.h, child: Divider(endIndent: 8.h)),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}

class ExploringPackagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 24.h, right: 78.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(width: 24.h);
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          final imagePath = [
            'assets/images/image1.jpg',
            'assets/images/image2.jpg',
            'assets/images/image3.jpg',
          ][index];

          return _buildImageWithExploreButton(
            imagePath: imagePath,
            onTap: () {
              onTapImgNorthernLights(context);
            },
          );
        },
      ),
    );
  }

  Widget _buildImageWithExploreButton({
    required String imagePath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 60.v,
            width: 60.v,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8.h),
            ),
          ),
          SizedBox(height: 8.v),
          ElevatedButton(
            onPressed: onTap,
            child: Text("Explore"),
          ),
        ],
      ),
    );
  }
}

class ExploringPackagesScreen extends StatelessWidget {
  ExploringPackagesScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WanderlustSection(),
              SizedBox(height: 35.v),
              ExplorePackagesSection(),
              SizedBox(height: 10.v),
              DiscoverYourHavenSection(searchController: searchController),
              SizedBox(height: 23.v),
              RecommendedSection(),
              SizedBox(height: 49.v),
              SeasonalSection(),
              SizedBox(height: 25.v),
              ExploringPackagesSection(),
              SizedBox(height: 7.v),
              // ... other widgets
            ],
          ),
        ),
      ),
    );
  }

  // Other methods and onTap handlers can remain unchanged
}
