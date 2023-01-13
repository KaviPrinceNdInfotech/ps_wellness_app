import 'package:get/get.dart';
import 'package:ps_welness/modules_view/9_doctor_section_view/payment_historyy/payment_historiess.dart';
import 'package:ps_welness/servicess_api/api_services_all_api.dart';

class DoctorPaymentViewControllers extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxBool isLoading = true.obs;

  void toggle(int index) => selectedIndex.value = index;

  PaymentHistory? viewPaymenthistory;

  //all catagary list .........

  void viewPaymentHistoryApi() async {
    isLoading(true);
    viewPaymenthistory = await ApiProvider.ViewPaymentHistoryApi();
    if (viewPaymenthistory != null
        //getcatagartlist!.result!.isNotEmpty
        ) {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    viewPaymentHistoryApi();
  }

  @override
  void dispose() {
    Get.delete<DoctorPaymentViewControllers>();
    super.dispose();
  }
}
