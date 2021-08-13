import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteNext extends StatelessWidget {
  const RouteNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('this is next screen'),
            SizedBox(height: 10),
            Text('${Get.parameters['someVal']}'),
          ],
        ),
      ),
    );
  }
}
