import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetCls extends StatelessWidget {
  const BottomSheetCls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('BottomSheet'),
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.wb_sunny_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Light',
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.wb_sunny,
                            color: Colors.black,
                          ),
                          title: Text(
                            'Dark',
                            style: TextStyle(color: Colors.white),
                          ),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                  backgroundColor: Colors.brown,
                  barrierColor: Colors.transparent,
                  //isDismissible: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0)),
                    //side: BorderSide(color: Colors.white54),
                  ),
                  enableDrag: false,
                ); // BottomSheet
              },
            )
          ],
        ),
      ),
    );
  }
}
