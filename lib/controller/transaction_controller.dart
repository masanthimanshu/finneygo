import 'package:finneygo/network/endpoints.dart';
import 'package:finneygo/network/requests.dart';
import 'package:finneygo/utils/show_toast.dart';
import 'package:toastification/toastification.dart';

class TransactionController with HTTPRequests {
  Future<void> addTransaction(Map<String, dynamic> data) async {
    final res = await postRequest(
      payload: data,
      url: apiEndpoint(ApiEndpoints.addTransaction),
    );

    if (res != null) {
      showToast(
        type: ToastificationType.success,
        title: "Transaction Added Successfully",
        subTitle: "Your transaction is added successfully 😊",
      );
    } else {
      showToast(
        type: ToastificationType.error,
        title: "Error Adding Transaction",
        subTitle: "An error occurred while adding your transaction",
      );
    }
  }

  Future<void> deleteTransaction(String chatId) async {
    final res = await deleteRequest(
      apiEndpoint(ApiEndpoints.deleteTransaction) + chatId,
    );

    if (res != null) {
      showToast(
        type: ToastificationType.info,
        title: "Transaction Deleted Successfully",
        subTitle: "Your transaction is deleted successfully",
      );
    } else {
      showToast(
        type: ToastificationType.error,
        title: "Error Deleting Transaction",
        subTitle: "An error occurred while deleting your transaction",
      );
    }
  }
}
