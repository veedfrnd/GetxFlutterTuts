import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteHome extends StatelessWidget {
  const RouteHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Named'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('This is home'),
            SizedBox(
              height: 8,
            ),
            Text('This is Name ${Get.parameters['name']} and content is ${Get.parameters['content']}'),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                //Get.toNamed('/nextScreen');
                /*todo: we can also pass data bw screens*/
                Get.toNamed('/nextScreen/1234');
              },
              child: Text('Next'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
            ),
            SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Back to Home'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber)),
            )
          ],
        ),
      ),
    );
  }
}
