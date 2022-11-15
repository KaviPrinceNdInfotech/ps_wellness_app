import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComplaintController extends GetxController {
  final GlobalKey<FormState> complaintformkey = GlobalKey<FormState>();

  ///this is for State....................................
  Rx<String?> selectedCity = (null as String?).obs;
  RxList<String> cities = <String>[].obs;

  //this is for City.................................
  Rx<String?> selectedState = (null as String?).obs;
  RxList<String> states = <String>[].obs;

  late TextEditingController complaintController;

  var complaint = '';

  @override
  void onInit() {
    states.refresh();
    super.onInit();
    complaintController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    complaintController.dispose();
  }

  String? validAddress(String value) {
    if (value.length < 2) {
      return "This is required field.";
    }
    return null;
  }

  void checkUser1() {
    final isValid = complaintformkey.currentState!.validate();
    if (!isValid) {
      return;
    }
    complaintformkey.currentState!.save();
    //Get.to(() => HomePage());
  }
}
