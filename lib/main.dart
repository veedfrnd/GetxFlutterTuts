import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:use_getx/bottom_sheet.dart';
import 'package:use_getx/dialog_cls.dart';
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
      home: MainRoute(),
    );
  }
}
