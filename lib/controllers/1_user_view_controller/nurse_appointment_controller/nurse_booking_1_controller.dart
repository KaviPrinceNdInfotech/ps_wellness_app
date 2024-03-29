import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:ps_welness/model/1_user_model/nurse_appointment_models/nurse_type_model.dart';
import 'package:ps_welness/model/1_user_model/nurse_location_model/nurse_location_models.dart';
import 'package:ps_welness/model/1_user_model/nurse_type_model/nurse_type_model.dart';
import 'package:ps_welness/model/1_user_model/test_name_model/test_name_modells.dart';
import 'package:ps_welness/modules_view/1_user_section_views/nursess/appointment_history_nurse/nurse_history_appointment.dart';
import 'package:ps_welness/modules_view/circular_loader/circular_loaders.dart';
import 'package:ps_welness/servicess_api/api_services_all_api.dart';
import 'package:http/http.dart' as http;

//import '../../../modules_view/1_user_section_views/nursess/nurse_type_model/nurse_type_model.dart';

class NurseBooking1Controller extends GetxController {
  final GlobalKey<FormState> NurseBookingformkey = GlobalKey<FormState>();
  RxBool isLoading = true.obs;

  var selectedTime = TimeOfDay.now().obs;
  var selectedDate = DateTime.now().obs;
  RxInt selectedIndex = 0.obs;
  var newpickedDate = DateTime.now().obs;
  //RxBool isLoading = false.obs;

  late TextEditingController appointmentController1;
  late TextEditingController appointmentController2;

  var appointment = ''.obs;

  ///this is for State....................................
  Rx<String?> selectedCity = (null as String?).obs;
  final selectednurse = "".obs;
  RxList<String> cities = <String>[].obs;
  //this is for nurse type.................................
  Rx<NurseModels?> selectedNurse = (null as NurseModels?).obs;
  List<NurseModels> nurse = <NurseModels>[].obs;

  //this is for nurse type.................................
  Rx<NurseLocationModel?> selectedNurseLocation = (null as NurseLocationModel?).obs;
  List<NurseLocationModel> locations = <NurseLocationModel>[].obs;

  var selectedServicee = ''.obs;
  var selectedplan = ''.obs;

  var selectedhours = ''.obs;

  var selectedshift = ''.obs;

  //radio.........

  onChangeServicee(String servicee) {
    selectedServicee.value = servicee;
  }

  onChangeHours(String servicee) {
    selectedhours.value = servicee;
  }

  onChangeShifts(String servicee) {
    selectedshift.value = servicee;
  }

  var selectedService = ''.obs;

  onChangePlan(String plan) {
    selectedService.value = plan;
  }

  //this is for City.................................
  Rx<String?> selectedState = (null as String?).obs;
  RxList<String> states = <String>[].obs;

  NurseList? nurseListUser;

  void labListApi() async {
    isLoading(true);
    nurseListUser = await ApiProvider.NurseTypeApi();
    print('Prince lab list');
    print(nurseListUser);
    if (nurseListUser != null) {
      //Get.to(() => TotalPrice());
      isLoading(false);
      //Get.to(()=>Container());
    }
  }

  ///nurse type api class.................
  void getNurseTypeApi() async {
    nurse = await ApiProvider.getnursetypeApi();
    print('Prince lab test  list');
    print(nurse);
  }

  ///nurse location api class.................
  void getNurseLocationApi() async {
    locations = await ApiProvider.getnurselocationtApi();
    print('Prince lab test  list');
    print(locations);
  }

  /// nurse form booking api..................
  var Id = '';

  void nurseBookingFormApi() async {
    CallLoader.loader();
    http.Response r = await ApiProvider.NurseselectionformApi(
      serviceTypeController.value,
      serviceTimeController.value,
      nurseTypeIdController.value,
      patientIdController.text,
      mobileController.text,
      ServiceDateController.text,
      StartDateController.value,
      EndDateController.value,
      LocationIdController.text,
    );

    if (r.statusCode == 200) {
      var data = jsonDecode(r.body);

      CallLoader.hideLoader();

      /// we can navigate to user page.....................................
      Get.to(NurseAppointmentHistory());

    }
  }

  late TextEditingController serviceTypeController,
      serviceTimeController,
      nurseTypeIdController,
      patientIdController,
      mobileController,
      ServiceDateController,
      StartDateController,
      EndDateController,
      LocationIdController;

  var serviceTime = '';
  var nurseTypeId = '';
  var patientId = '';
  var mobile = '';
  var ServiceDate = '';
  var StartDate = '';
  var EndDate = '';
  var LocationId = '';

  @override
  void onInit() {
    states.refresh();
    super.onInit();
    labListApi();
    getNurseTypeApi();
    getNurseLocationApi();

    serviceTypeController = TextEditingController();
    serviceTimeController = TextEditingController();
    nurseTypeIdController = TextEditingController();
    patientIdController = TextEditingController();
    mobileController = TextEditingController();
    ServiceDateController = TextEditingController();
    LocationIdController = TextEditingController();

    appointmentController1 = TextEditingController();
    appointmentController1.text = "DD-MM-YYYY";

    appointmentController2 = TextEditingController();
    appointmentController2.text = "DD-MM-YYYY";
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    serviceTypeController.dispose();
    serviceTimeController.dispose();
    nurseTypeIdController.dispose();
    patientIdController.dispose();
    mobileController.dispose();
    ServiceDateController.dispose();
    StartDateController.dispose();
    EndDateController.dispose();
    LocationIdController.dispose();

  }

  chooseDate() async {
    DateTime? newpickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
      initialEntryMode: DatePickerEntryMode.input,
      initialDatePickerMode: DatePickerMode.year,
      helpText: 'Select DOB',
      cancelText: 'Close',
      confirmText: 'Confirm',
      errorFormatText: 'Enter valid date',

      errorInvalidText: 'Enter valid date range',
      fieldLabelText: 'DOB',
      //fieldHintText: 'Month/Date/Year',
      //selectableDayPredicate: disableDate,
    );
    if (newpickedDate != null) {
      selectedDate.value = newpickedDate;
      appointmentController1
        ..text = DateFormat.yMMMd().format(selectedDate.value).toString()
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: appointmentController1.text.length,
            affinity: TextAffinity.upstream));
    }
    // if (pickedDate != null && pickedDate != selectedDate) {
    //   selectedDate.value = pickedDate;
    //   appointmentController.text =
    //       DateFormat('DD-MM-yyyy').format(selectedDate.value).toString();
    // }
  }

  chooseDate2() async {
    DateTime? newpickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
      initialEntryMode: DatePickerEntryMode.input,
      initialDatePickerMode: DatePickerMode.year,
      helpText: 'Select DOB',
      cancelText: 'Close',
      confirmText: 'Confirm',
      errorFormatText: 'Enter valid date',

      errorInvalidText: 'Enter valid date range',
      fieldLabelText: 'DOB',
      //fieldHintText: 'Month/Date/Year',
      //selectableDayPredicate: disableDate,
    );
    if (newpickedDate != null) {
      selectedDate.value = newpickedDate;
      appointmentController2
        ..text = DateFormat.yMMMd().format(selectedDate.value).toString()
        ..selection = TextSelection.fromPosition(TextPosition(
            offset: appointmentController2.text.length,
            affinity: TextAffinity.upstream));
    }
    // if (pickedDate != null && pickedDate != selectedDate) {
    //   selectedDate.value = pickedDate;
    //   appointmentController.text =
    //       DateFormat('DD-MM-yyyy').format(selectedDate.value).toString();
    // }
  }

  //bool disableDate(DateTime day) {
  //   if ((day.isAfter(DateTime.now().subtract(Duration(days: 4))) &&
  //       day.isBefore(DateTime.now().add(Duration(days: 30))))) {
  //     return true;
  //   }
  //   return false;
  // }

  String? validName(String value) {
    if (value.length < 2) {
      return "              Provide valid name";
    }
    return null;
  }

  String? validEmail(String value) {
    if (value.isEmpty) {
      return '              This field is required';
    }
    if (!value.contains('@')) {
      return "              A valid email should contain '@'";
    }
    if (!RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(value)) {
      return "              Please enter a valid email";
    }
    return null;
  }

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
  ///.......................

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

  String? validPhone(String value) {
    if (value.isEmpty) {
      return '              This field is required';
    }
    if (value.length != 10) {
      return '              A valid phone number should be of 10 digits';
    }
    return null;
  }

  String? validAddress(String value) {
    if (value.length < 2) {
      return "              Provide valid address";
    }
    return null;
  }

  String? validPin(String value) {
    if (value.isEmpty) {
      return '              This field is required';
    }
    if (value.length != 6) {
      return '              A valid pin should be of 6 digits';
    }
    return null;
  }

  // void checkUser1() {
  //   final isValid = NurseBookingformkey.currentState!.validate();
  //   if (!isValid) {
  //     return;
  //   }
  //   NurseBookingformkey.currentState!.save();
  //   //Get.to(() => HomePage());
  // }
  void checkNurse1() {
    if (NurseBookingformkey.currentState!.validate()) {
      nurseBookingFormApi();
    }
    NurseBookingformkey.currentState!.save();
  }
}