import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('This is text'),
            SizedBox(
              height: 8,
            ),
            /*todo : data comes from previous screen*/
            Text('${Get.arguments}'),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Next'),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black26)),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                //Get.back();
                Get.back(result: 'This data comes from another widget');
              },
              child: Text('Back'),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black26)),
            )
          ],
        ),
      ),
    );
  }
}
