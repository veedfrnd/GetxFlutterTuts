import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarCls extends StatelessWidget {
  const SnackBarCls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var titl = 'This is title';
    var bodytxt = 'This is body of snackbar';
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Tut'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Get.snackbar(
                  titl,
                  bodytxt,
                  padding:
                      EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 25),
                  snackPosition: SnackPosition.BOTTOM,
                  /* titleText: Text(
                    'Another title text',
                    style: TextStyle(color: Colors.red),
                  ),
                  messageText: Text(
                    'Another message text',
                    style: TextStyle(color: Colors.red),
                  ),*/
                  colorText: Colors.white,
                  backgroundColor: Colors.black54,
                  borderRadius: 2,
                  margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                  //animationDuration: Duration(milliseconds: 3000),
                  /*borderColor: Colors.white,
                  borderWidth: 1,*/
                  //forwardAnimationCurve: Curves.bounceInOut,
                  isDismissible: true,
                  dismissDirection: SnackDismissDirection.HORIZONTAL,
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  shouldIconPulse: false,
                  mainButton: TextButton(
                    onPressed: () {
                      print('Hello world');
                    },
                    child: Text(
                      'Send',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                      padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                    ),
                  ),
                  /*snackbarStatus: (val){
                    print(val);
                  }*/

                  /*todo: if i use form then all the text, title button will hidden*/
                  /*userInputForm: Form(
                    child: TextField(

                    ),
                  ),*/
                ); // SnackBar
              },
              child: Text('Click On Me'),
            )
          ],
        ),
      ),
    );
  }
}
