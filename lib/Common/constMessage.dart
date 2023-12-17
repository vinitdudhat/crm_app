
import 'package:crm_app/Common/constColor.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ConstMessage{
  void snackBar(String title,String message){

    Get.snackbar(title, message,
        reverseAnimationCurve: Curves.bounceIn,
        forwardAnimationCurve: Curves.bounceInOut,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 2),
        colorText: Colors.white,
        backgroundColor: ConstColor.primaryColor);
  }
}