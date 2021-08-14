import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:use_getx/state_without_rx/count_controller.dart';

class HomeWithoutRx extends StatelessWidget {
  CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Manage Controller cycle without Rx '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountController>(
              id: 'onlyReBuild',
              /*  initState:(data)=>controller.incrementAsync(),
            dispose: (_)=>controller.cleanUpTask(),*/
              builder: (controller) {
                return Text('count ${controller.count}');
              },
            ),
            GetBuilder<CountController>(

              /*  initState:(data)=>controller.incrementAsync(),
            dispose: (_)=>controller.cleanUpTask(),*/
              builder: (controller) {
                return Text('count ${controller.count}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
