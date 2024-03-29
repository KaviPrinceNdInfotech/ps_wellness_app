import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ps_welness/model/1_user_model/city_model/city_modelss.dart';
import 'package:ps_welness/model/1_user_model/states_model/state_modells.dart';
import 'package:ps_welness/servicess_api/api_services_all_api.dart';

import '../../../model/1_user_model/test_name_model/test_name_modells.dart';

class Doctor_appointment_1_Controller extends GetxController {
  final GlobalKey<FormState> doctorappointment1key = GlobalKey<FormState>();

  ///this is for State....................................
  Rx<City?> selectedCity = (null as City?).obs;
  RxList<City> cities = <City>[].obs;

  //this is for City.................................
  Rx<StateModel?> selectedState = (null as StateModel?).obs;
  List<StateModel> states = <StateModel>[].obs;

  //this is for City.................................
  Rx<TestModel?> selectedTest = (null as TestModel?).obs;
  List<TestModel> tests = <TestModel>[].obs;

  // Rx<String?> selectedTest = (null as String?).obs;
  // RxList<String> cities2 = <String>[].obs;

  ///lab test api class.................
  void getTestNameApi() async {
    tests = await ApiProvider.getTestNameApi();
    print('Prince lab test  list');
    print(tests);
  }

  ///get state api.........

  void getStateLabApi() async {
    states = await ApiProvider.getSatesApi();
    print('Prince state  list');
    print(states);
  }

  ///get cities api...........
  void getCityByStateIDLab(String stateID) async {
    cities.clear();
    final localList = await ApiProvider.getCitiesApi(stateID);
    cities.addAll(localList);
    print("Prince cities of $stateID");
    print(cities);
  }

  // late TextEditingController nameController,
  //     emailController,
  //     passwordController,
  //     confirmpasswordController,
  //     mobileController,
  //     addressController,
  //     pinController;

  // var name = '';
  // var email = '';
  // var password = '';
  // var confirmpassword = '';
  // var mobile = '';
  // var address = '';
  // var pin = '';

  @override
  void onInit() {
    //states.refresh();
    super.onInit();
    getStateLabApi();
    selectedState.listen((p0) {
      if (p0 != null) {
        getCityByStateIDLab("${p0.id}");
      }
    });
    getTestNameApi();
  }
    // nameController = TextEditingController();
    // emailController = TextEditingController();
    // passwordController = TextEditingController();
    // confirmpasswordController = TextEditingController();
    // mobileController = TextEditingController();
    // addressController = TextEditingController();
    // pinController = TextEditingController();


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    // nameController.dispose();
    // emailController.dispose();
    // passwordController.dispose();
    // confirmpasswordController.dispose();
    // mobileController.dispose();
    // addressController.dispose();
    // pinController.dispose();
  }

  ///
  // String? validName(String value) {
  //   if (value.length < 2) {
  //     return "              Provide valid name";
  //   }
  //   return null;
  // }
  //
  // String? validEmail(String value) {
  //   if (value.isEmpty) {
  //     return '              This field is required';
  //   }
  //   if (!value.contains('@')) {
  //     return "              A valid email should contain '@'";
  //   }
  //   if (!RegExp(
  //     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  //   ).hasMatch(value)) {
  //     return "              Please enter a valid email";
  //   }
  //   return null;
  // }
  //
  // String? validPassword(String value) {
  //   confirmpassword = value;
  //
  //   if (value.isEmpty) {
  //     return "              Please Enter New Password";
  //   } else if (value.length < 8) {
  //     return "              Password must be atleast 8 characters long";
  //   } else {
  //     return null;
  //   }
  // }
  //
  // String? validConfirmPassword(String value) {
  //   if (value.isEmpty) {
  //     return "              Please Re-Enter New Password";
  //   } else if (value.length < 8) {
  //     return "              Password must be atleast 8 characters long";
  //   } else if (value != confirmpassword) {
  //     return "              Password must be same as above";
  //   } else {
  //     return null;
  //   }
  // }
  //
  // String? validPhone(String value) {
  //   if (value.isEmpty) {
  //     return '              This field is required';
  //   }
  //   if (value.length != 10) {
  //     return '              A valid phone number should be of 10 digits';
  //   }
  //   return null;
  // }
  //
  // String? validAddress(String value) {
  //   if (value.length < 2) {
  //     return "              Provide valid address";
  //   }
  //   return null;
  // }
  //
  // String? validPin(String value) {
  //   if (value.isEmpty) {
  //     return '              This field is required';
  //   }
  //   if (value.length != 6) {
  //     return '              A valid pin should be of 6 digits';
  //   }
  //   return null;
  // }

  void doctorcheck1() {
    final isValid = doctorappointment1key.currentState!.validate();
    if (!isValid) {
      return;
    }
    doctorappointment1key.currentState!.save();
    //Get.to(() => HomePage());
  }
}
