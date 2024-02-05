import 'package:flutter/material.dart';
import 'package:amish_s_application1/presentation/login_page_screen/login_page_screen.dart';
import 'package:amish_s_application1/presentation/frame_fiftytwo_screen/frame_fiftytwo_screen.dart';
import 'package:amish_s_application1/presentation/kerala_screen/kerala_screen.dart';
import 'package:amish_s_application1/presentation/frame_sixtyfive_screen/frame_sixtyfive_screen.dart';
import 'package:amish_s_application1/presentation/frame_sixtysix_screen/frame_sixtysix_screen.dart';
import 'package:amish_s_application1/presentation/pattaya_screen/pattaya_screen.dart';
import 'package:amish_s_application1/presentation/hampi_screen/hampi_screen.dart';
import 'package:amish_s_application1/presentation/frame_fifteen_screen/frame_fifteen_screen.dart';
import 'package:amish_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:amish_s_application1/presentation/exploring_packages_screen/exploring_packages_screen.dart';
import 'package:amish_s_application1/presentation/frame_sixteen_screen/frame_sixteen_screen.dart';
import 'package:amish_s_application1/presentation/frame_seventeen_screen/frame_seventeen_screen.dart';
import 'package:amish_s_application1/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:amish_s_application1/presentation/month_screen/month_screen.dart';
import 'package:amish_s_application1/presentation/day_screen/day_screen.dart';
import 'package:amish_s_application1/presentation/travelling_from_screen/travelling_from_screen.dart';
import 'package:amish_s_application1/presentation/available_hotel_screen/available_hotel_screen.dart';
import 'package:amish_s_application1/presentation/frame_fourteen_screen/frame_fourteen_screen.dart';
import 'package:amish_s_application1/presentation/frame_eightythree_screen/frame_eightythree_screen.dart';
import 'package:amish_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginPageScreen = '/login_page_screen';

  static const String frameFiftytwoScreen = '/frame_fiftytwo_screen';

  static const String keralaScreen = '/kerala_screen';

  static const String frameSixtyfiveScreen = '/frame_sixtyfive_screen';

  static const String frameSixtysixScreen = '/frame_sixtysix_screen';

  static const String pattayaScreen = '/pattaya_screen';

  static const String hampiScreen = '/hampi_screen';

  static const String frameFifteenScreen = '/frame_fifteen_screen';

  static const String profileScreen = '/profile_screen';

  static const String exploringPackagesScreen = '/exploring_packages_screen';

  static const String frameSixteenScreen = '/frame_sixteen_screen';

  static const String frameSeventeenScreen = '/frame_seventeen_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String monthScreen = '/month_screen';

  static const String dayScreen = '/day_screen';

  static const String travellingFromScreen = '/travelling_from_screen';

  static const String availableHotelScreen = '/available_hotel_screen';

  static const String frameFourteenScreen = '/frame_fourteen_screen';

  static const String frameEightythreeScreen = '/frame_eightythree_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginPageScreen: (context) => LoginPageScreen(),
    frameFiftytwoScreen: (context) => FrameFiftytwoScreen(),
    keralaScreen: (context) => KeralaScreen(),
    frameSixtyfiveScreen: (context) => FrameSixtyfiveScreen(),
    frameSixtysixScreen: (context) => FrameSixtysixScreen(),
    pattayaScreen: (context) => PattayaScreen(),
    hampiScreen: (context) => HampiScreen(),
    frameFifteenScreen: (context) => FrameFifteenScreen(),
    profileScreen: (context) => ProfileScreen(),
    exploringPackagesScreen: (context) => ExploringPackagesScreen(),
    frameSixteenScreen: (context) => FrameSixteenScreen(),
    frameSeventeenScreen: (context) => FrameSeventeenScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    monthScreen: (context) => MonthScreen(),
    dayScreen: (context) => DayScreen(),
    travellingFromScreen: (context) => TravellingFromScreen(),
    availableHotelScreen: (context) => AvailableHotelScreen(),
    frameFourteenScreen: (context) => FrameFourteenScreen(),
    frameEightythreeScreen: (context) => FrameEightythreeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
