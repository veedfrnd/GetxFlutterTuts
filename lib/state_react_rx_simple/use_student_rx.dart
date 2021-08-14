import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:use_getx/state_react_rx_simple/student_controller_rx.dart';

class StudentRx extends StatelessWidget {
  //var student = Student();

  /*for making the entire class Rx*/
  //var student = Student(name: 'Tom',age: 21).obs;

  /*todo using controller this is also dependency injection where the student
      controller is inject in widget tree so we can use it by Get.find method*/
  /*todo if permanent is true then the instance of the class in not destroy
     if they not in use, otherwise remove*/
  var stuController = Get.put(StudentController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('state by class'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => /*todo ${student.name.value} if the individual  var is Rx*/
                  /*todo direct login inside then ${student.value.name}*/
                  Text(
                'name change to upper case ${stuController.student.value.name}',
                style: TextStyle(fontSize: 16),
              ),
            ),
            TextButton(
              onPressed: () {
                /* todo if individual Rx*/
                //student.name.value = student.name.value.toUpperCase();

                /*todo if entire class Rx*/
                /*student.update((stu) {
                  stu!.name = stu.name.toString().toUpperCase();
                });*/
                stuController.convertUpperCase();
              },
              child: Text(
                'Change Uppercase',
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
