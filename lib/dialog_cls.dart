import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogCls extends StatelessWidget {
  const DialogCls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Tut'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Show Dialog'),
              onPressed: () {
                //Get.defaultDialog();
                Get.defaultDialog(
                  title: 'This is the Head',
                  /*titleStyle: TextStyle(color: Colors.white),*/
                  middleText: 'This is body of Dialog show when appear',
                  /*middleTextStyle: TextStyle(color: Colors.white),
                  backgroundColor: Colors.black54,*/
                  radius: 10,
                  content: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 20, bottom: 10),
                    child: Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(width: 20),
                        Text('Data Loading...')
                      ],
                    ),
                  ),
                  /*todo: default buttons*/
                  /*textCancel: 'Cancel',
                  textConfirm: 'Confirm',
                  onConfirm: (){},
                  onCancel: (){},
                  confirmTextColor: Colors.white,
                  buttonColor: Colors.amber,*/

                  /*todo customize button in it*/
                  /* cancel: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.blue),
                  ),
                  confirm: Text(
                    'Confirm',
                    style: TextStyle(color: Colors.blue),
                  ),*/

                  /*todo customize button in it*/
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('Confirm'),
                        ),
                      ],
                    ),
                  ],
                  barrierDismissible: false,
                ); // Dialog
              },
            )
          ],
        ),
      ),
    );
  }
}
