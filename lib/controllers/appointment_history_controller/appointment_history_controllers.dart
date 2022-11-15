import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
//import 'package:intl/intl.dart';

class AppointmentController extends GetxController {
  var selectedTime = TimeOfDay.now().obs;
  var selectedDate = DateTime.now().obs;
  RxInt selectedIndex = 0.obs;
  RxBool isLoading = false.obs;

  late TextEditingController appointmentController;

  var appointment = ''.obs;

  @override
  void onInit() {
    super.onInit();
    appointmentController = TextEditingController();
    appointmentController.text = "DD-MM-YYYY";
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    //TextEditingController.dispose();
  }
  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
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
      fieldHintText: 'Month/Date/Year',
      //selectableDayPredicate: disableDate,
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      selectedDate.value = pickedDate;
      appointmentController.text =
          DateFormat('DD-MM-yyyy').format(selectedDate.value).toString();
    }
  }

  //bool disableDate(DateTime day) {
  //   if ((day.isAfter(DateTime.now().subtract(Duration(days: 4))) &&
  //       day.isBefore(DateTime.now().add(Duration(days: 30))))) {
  //     return true;
  //   }
  //   return false;
  // }
}
