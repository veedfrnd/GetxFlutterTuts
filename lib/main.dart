import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:use_getx/bottom_sheet.dart';
import 'package:use_getx/dialog_cls.dart';
import 'package:use_getx/international_lang/message.dart';
import 'package:use_getx/named_routes/home_route.dart';
import 'package:use_getx/named_routes/main_route.dart';
import 'package:use_getx/named_routes/next_route.dart';
import 'package:use_getx/snackbar_cls.dart';
import 'package:use_getx/state_react_rx_simple/use_student_rx.dart';
import 'package:use_getx/state_without_rx/state_home_without_rx.dart';
import 'package:use_getx/un_namedroutes/route_main.dart';

import 'international_lang/inter_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Library',
      initialRoute: '/',
      translations: Message(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'US'),
      transitionDuration: Duration(milliseconds: 500),
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MainLanguage()),
        // GetPage(name: '/', page: () => HomeWithoutRx()),
        //GetPage(name: '/', page: () => StudentRx()),
        // GetPage(name: '/', page: () => HomeReact()),
        //GetPage(name: '/', page: () => RouteMain()),
        GetPage(name: '/home', page: () => RouteHome()),
        /*GetPage(
          name: '/nextScreen',
          page: () => RouteNext(),
          transition: Transition.rightToLeft
        ),*/
        /*todo: we can also pass the define query string var here to pass data bw screens*/
        GetPage(
            name: '/nextScreen/:someVal',
            page: () => RouteNext(),
            transition: Transition.rightToLeft)
      ],
      home: MainLanguage(),
    );
  }
}
