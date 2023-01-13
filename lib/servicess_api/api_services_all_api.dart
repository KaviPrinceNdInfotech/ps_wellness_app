import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:ps_welness/model/4_nurse_all_models/nurse_appointment.dart';
import 'package:ps_welness/model/9_doctors_model/doctor_profile_model.dart';
import 'package:ps_welness/model/9_doctors_model/view_patient_report_model.dart';
import 'package:ps_welness/model/franchies_models/franchies_specialist.dart';

import '../model/9_doctors_model/doctor_payment_history.dart';

class ApiProvider {
  static var baseUrl = 'http://pswellness.in/';
  static String token = '';
  static String Token = '';
  static String catid = '';
  static String productid = '';
  static String orderid = '';
  static String Id = ''.toString();
  static String prodid = '';
  static String cartlistid = '';
  static String addressid = '';
  static String Message = "";

  ///TODO: here we have to add different api in this page...........
  /// TODO: from here user 1 section...........
  //login user api ps welness api 1..................................

  static LoginEmailApi(
    var Username,
    var Password,
  ) async {
    var url = baseUrl + 'api/SignupApi/Login';

    var body = {
      "Username": Username,
      "Password": Password,
    };
    print(body);
    http.Response r = await http.post(
      Uri.parse(url), body: body,
      //headers: headers
    );
    print(r.body);
    if (r.statusCode == 200) {
      var prefs = GetStorage();
      //saved id..........
      prefs.write("Id".toString(), json.decode(r.body)['Id']);
      Id = prefs.read("Id").toString();
      print('&&&&&&&&&&&&&&&&&&&&&&:${Id}');

      // //saved token.........
      // prefs.write("token".toString(), json.decode(r.body)['token']);
      // token = prefs.read("token").toString();
      // print(token);
      return r;
    } else if (r.statusCode == 401) {
      Get.snackbar('message', r.body);
    } else {
      Get.snackbar('Error', r.body);
      return r;
    }
  }

  ///Todo: from here franchies 2 section.................
  ///
  static FranchiesSpealistApi() async {
    var url = baseUrl + 'api/CommonApi/GetSpecialist?depId=87';
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        SpealistFranchies? catagarylist = spealistFranchiesFromJson(r.body);
        return catagarylist;
      }
    } catch (error) {
      return;
    }
  }

  ///Todo: from here nurse 3 section.................
  ///
  static NurseappointmentApi() async {
    var url = baseUrl +
        'api/NurseAPI/NurseAppointmentRequests?NurseTypeId=2&NurseId=56';
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        List<NurseAppointment?>? nurseeAppointment =
            nurseAppointmentFromJson(r.body);
        return nurseeAppointment;
      }
    } catch (error) {
      return;
    }
  }

  ///Todo: from here doctor 9 section.................
  ///
  //sign up  Api doctor Api 1........................................................
  static signDoctorUpApi(
    var PinCode,
    var Id,
    var DoctorName,
    var PhoneNumber,
    var MobileNumber,
    var EmailId,
    var StateMaster_Id,
    var CityMaster_Id,
    var Location,
    var LicenceNumber,
    var ClinicName,
    var Department_Id,
    var Specialist_Id,
    var Fee,
    var Password,
    var ConfirmPassword,
    var LicenceBase64,
    var LicenceImageName,
    var LicenceImage,
    var StartTime,
    var EndTime,
    var SlotTiming,
    var StartTime2,
    var EndTime2,
    var SlotTiming2,
    // var Name,
    // var Mobile_No,
    // var Email_Id,
    // var PassWord,
    // var ConfirmPassWord,
  ) async {
    try {
      var url = baseUrl + 'api/SignupApi/DoctorRegistration';

      var body = {
        "PinCode": PinCode,
        "Id": Id,
        "DoctorName": DoctorName,
        "PhoneNumber": PhoneNumber,
        "MobileNumber": MobileNumber,
        "EmailId": EmailId,
        "StateMaster_Id": StateMaster_Id,
        "CityMaster_Id": CityMaster_Id,
        "Location": Location,
        "LicenceNumber": LicenceNumber,
        "ClinicName": ClinicName,
        "Department_Id": Department_Id,
        "Specialist_Id": Specialist_Id,
        "Fee": Fee,
        "Password": Password,
        "ConfirmPassword": ConfirmPassword,
        "LicenceBase64": LicenceBase64,
        "LicenceImageName": LicenceImageName,
        "LicenceImage": LicenceImage,
        "StartTime": StartTime,
        "EndTime": EndTime,
        "SlotTiming": SlotTiming,
        "StartTime2": StartTime2,
        "EndTime2": EndTime2,
        "SlotTiming2": SlotTiming2,

        // "Name": Name,
        // "Mobile_No": Mobile_No,
        // "Email_Id": Email_Id,
        // "PassWord": PassWord,
        // "ConfirmPassWord": ConfirmPassWord,
      };

      print(body);
      http.Response r = await http.post(
        Uri.parse(url),
        body: body,
      );
      print(r.body);

      if (r.statusCode == 200) {
        return r;
      } else {
        Get.snackbar('Error', 'SignUp Fail');
        return r;
      }
    } catch (e) {
      print('Error');
      print(e.toString());
    }
  }

  //doctor profile  api 2..........................
  static DoctorProfileApi() async {
    var url = baseUrl + 'api/DoctorApi/DoctorProfile?DoctorId=151';
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        DoctorProfile? doctorProfile = doctorProfileFromJson(r.body);
        return doctorProfile;
      }
    } catch (error) {
      return;
    }
  }

  //view_patient_list api 3.........

  static ViewPatientReportsApi() async {
    var url =
        baseUrl + 'api/DoctorApi/PatientReports?DoctorId=151&PatientId=77';
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        ViewPatientReport? viewPatientReport =
            viewPatientReportFromJson(r.body);
        return viewPatientReport;
      }
    } catch (error) {
      return;
    }
  }

  //view_payment_history.............

  static ViewPaymentHistoryApi() async {
    var url = baseUrl + 'api/DoctorApi/paymentHistory?id=151&Date=2023-01-10&=';
    try {
      http.Response r = await http.get(Uri.parse(url));
      print(r.body.toString());
      if (r.statusCode == 200) {
        var viewpaymentreport = paymentHistoryFromJson(r.body);
        return viewpaymentreport;
      }
    } catch (error) {
      return;
    }
  }
}
