import 'package:get/get.dart';
import 'package:use_getx/state_react_rx_simple/student.dart';

class StudentController extends GetxController {
  var student = Student(name: 'tom', age: 21).obs;

  void convertUpperCase() {
    student.update((val) {
      val!.name = val.name.toString().toUpperCase();
    });
  }
}
