import 'package:flutter/widgets.dart';
import 'package:formulae/constants.dart/routes.dart';
import 'package:formulae/screens/courses.dart';
import 'package:formulae/screens/shared/formulae.dart';
import 'package:formulae/screens/dashboard.dart';
import 'package:formulae/screens/home.dart';
import 'package:formulae/screens/shared/chapter_list.dart';
import 'package:formulae/screens/shared/chapter_list_common.dart';
import 'package:formulae/screens/splash_screen.dart';

Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    RoutingNamesConstant.SPLASH_SCREEN_ROUTE: (BuildContext context) => const SplashScreen(),
    RoutingNamesConstant.HOME_ROUTE: (BuildContext context) => const Home(),
    RoutingNamesConstant.COURSES: (BuildContext context) => const Courses(),
    RoutingNamesConstant.DASHBOARD_ROUTE: (BuildContext context) => const Dashboard(),
    RoutingNamesConstant.FIRST_YEAR: (BuildContext context) => const ChapterListCommon(),
    RoutingNamesConstant.CHAPTER_LIST: (BuildContext context) => const ChapterList(),
    RoutingNamesConstant.FORMULAE: (BuildContext context) => Formulae(chapterName: '', chapterIndex: 0,)
};