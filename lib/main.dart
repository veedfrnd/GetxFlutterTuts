import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:use_getx/bottom_sheet.dart';
import 'package:use_getx/dialog_cls.dart';
import 'package:use_getx/named_routes/home_route.dart';
import 'package:use_getx/named_routes/main_route.dart';
import 'package:use_getx/named_routes/next_route.dart';
import 'package:use_getx/snackbar_cls.dart';
import 'package:use_getx/un_namedroutes/route_main.dart';

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
      transitionDuration: Duration(milliseconds: 500),
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => RouteMain()),
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
            transition: Transition.rightToLeft
        )
      ],
      home: RouteMain(),
    );
  }
}
