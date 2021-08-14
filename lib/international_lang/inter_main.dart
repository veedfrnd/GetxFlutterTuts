import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:use_getx/international_lang/controller_language.dart';

class MainLanguage extends StatelessWidget {

var controller = Get.put(LanguageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Internationalization Language change'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
            ),
            TextButton(
              onPressed: () {
                controller.changeLanguage('hi', 'IN');
              },
              child: Text(
                'Hindi',
                style: TextStyle(fontSize: 16),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
            ),
            TextButton(
              onPressed: () {
                controller.changeLanguage('en', 'US');
              },
              child: Text(
                'English',
                style: TextStyle(fontSize: 16),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
              ),
            ),
            TextButton(
              onPressed: () {
                controller.changeLanguage('fr', 'FR');
              },
              child: Text(
                'French',
                style: TextStyle(fontSize: 16),
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
