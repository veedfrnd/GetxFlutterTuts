import 'package:get/get.dart';

class Student {
  /* todo Classes can be made Rx by making all the individual var Rx or by making entire class Rx*/

  /*individual var*/
/*  var name  = 'Tom'.obs;
  var age  = 25.obs;*/
  /*---------------------------------------*/

  /*to make the entire class Rx*/
  var name;
  var age;
  Student({this.name, this.age});
}
