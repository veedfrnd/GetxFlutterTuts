import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/*if we want that every time the values of the var changes then all the widget
which uses the variable must update itself.
-------------------------------------------------------
So then the variable must be reactive or observable,and to make it,
we use Reactive(Rx) or .obs is with variable value.
----------------------------------------------------
To update the widget which use Rx variable must placed inside the
Obx(()=> widget which uses Rx)
------------------------------------------
Other way to make the var Rx
1. using Rx(type)
final name = RxString('')
final bool = RxBool(false)
final count  =  RxInt(0)
final bal =  RxDouble(1.1)
final list = RxList<String or any type>([])
final map = RxMap<String,any type> ({})
----------------------------------------
2. way using Dart Generics, Rx<Type> instead ()
final name = Rx<String>('')
final bool = Rx<Bool>(false)
final count  =  Rx<Int>(0)
final num = Rx<Num>(0)
final bal =  Rx<Double>(1.1)
final list = Rx<List<String or any type>>([])
final map = Rx<Map<String,any type>> ({})
---------
custom classes
final user  = Rx<User>();
 */

class HomeReact extends StatelessWidget {
  var count = 0.obs;

  void incrementCount() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State manage, Rx Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'using Reactive(Rx) update count $count',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                incrementCount();
              },
              child: Text(
                'Increment',
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
            ) ,
            TextButton(
              onPressed: () {
                Get.toNamed('/home');
              },
              child: Text(
                'Go Home',
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
            )
          ],
        ),
      ),
    );
  }
}
