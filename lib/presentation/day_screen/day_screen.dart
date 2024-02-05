import 'package:amish_s_application1/core/app_export.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

class DayScreen extends StatelessWidget {
  DayScreen({Key? key})
      : super(
          key: key,
        );

  List<DateTime?> selectedDatesFromCalendar1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildCityNameText(context),
              Spacer(
                flex: 51,
              ),
              _buildJanuaryCalendar(context),
              Spacer(
                flex: 48,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCityNameText(BuildContext context) {
    return SizedBox(
      height: 141.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 104.h,
                vertical: 30.v,
              ),
              decoration: AppDecoration.fillBlack,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 7.v),
                  Text(
                    "City Name",
                    style: theme.textTheme.displayMedium,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 23.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.blueGray100,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "DAY",
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJanuaryCalendar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 43.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        children: [
          SizedBox(height: 9.v),
          Text(
            "January",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 28.v),
          SizedBox(
            height: 249.v,
            width: 341.h,
            child: CalendarDatePicker2(
              config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.multi,
                firstDate: DateTime(DateTime.now().year - 5),
                lastDate: DateTime(DateTime.now().year + 5),
                selectedDayHighlightColor: Color(0XFFFFFFFF),
                firstDayOfWeek: 0,
                selectedDayTextStyle: TextStyle(
                  color: Color(0XFF000000),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
              value: selectedDatesFromCalendar1,
              onValueChanged: (dates) {},
            ),
          ),
        ],
      ),
    );
  }
}
