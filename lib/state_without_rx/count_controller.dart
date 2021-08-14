import 'dart:async';
import 'package:get/get.dart';

class CountController extends GetxController {
  var count = 0;

  void incrementAsync() async {
 /*   Timer(Duration(seconds: 1), () {
      this.count++;
      update();
    });*/
    Future.delayed(Duration(seconds: 3), () {
      this.count++;
      //update(); /*todo update all where it use*/
      update(['onlyReBuild']); /* todo update only where id matches regard */
    });
  }

  void cleanUpTask() {
    print('Clean done');
  }

  /*Better approach*/
  @override
  void onInit() {
    super.onInit();
    print("intit Called");
    incrementAsync();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    print("distroyed called");
    cleanUpTask();
    super.onClose();
  }
}
