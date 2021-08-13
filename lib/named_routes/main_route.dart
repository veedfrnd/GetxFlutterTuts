import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteMain extends StatelessWidget {
  const RouteMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Named Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Get.toNamed('/home');
                //Get.offNamed('/home');
                //Get.offAllNamed('/home');
                /*todo: we can also pass the query string to pass data bw screens*/
                Get.toNamed('/home?name=Prashant&content=flutter tuts');
              },
              child: Text('Home'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber)),
            )
          ],
        ),
      ),
    );
  }
}
