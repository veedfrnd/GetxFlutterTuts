import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:use_getx/get_depencency/my_contorller.dart';

class HomeDependency extends StatelessWidget {
  /*this controller will hold the memory at creation*/
  //var controller = Get.put(MyController(), tag: 'One', permanent: true);
  //Get.lazyPut (() => MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dependency Injection Getx'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
