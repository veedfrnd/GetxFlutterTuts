import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:use_getx/un_namedroutes/route_home.dart';

class MainRoute extends StatelessWidget {
  const MainRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () async {
                //Get.to(HomeRoute());
               var datareturn =await Get.to(
                  HomeRoute(),
                  //fullscreenDialog: true,
                  transition: Transition.zoom,
                  duration: Duration(milliseconds: 1000),
                  //curve: Curves.bounceInOut,
                  /*also pass data to next screen*/
                  arguments: "Hello Data"
                );
               print('Data return from another screen $datareturn');
                /*todo: move to next screen but no option to return to previous screen*/
                //Get.off(HomeRoute(),);
                /*todo: move to next screen but no option to return to all previous screen/routes*/
                //Get.offAll(HomeRoute(),);
              },
              child: Text('Go to home'),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black26)),
            ),
          ],
        ),
      ),
    );
  }
}
