import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  void changeLanguage(var langCode, var countryCode) {
    var local = Locale(langCode, countryCode);
    Get.updateLocale(local);
  }
}
