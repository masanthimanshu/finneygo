import 'package:finneygo/network/endpoints.dart';
import 'package:finneygo/network/requests.dart';
import 'package:finneygo/utils/toast.dart';

class TransactionController with HTTPRequests {
  Future<void> addTransaction(Map<String, dynamic> data) async {
    final res = await postRequest(
      url: apiEndpoint(ApiEndpoints.addTransaction),
      payload: data,
    );

    if (res != null) {
      showToast(
        title: "Transaction Added Successfully",
        subTitle: "Your transaction is added successfully 😊",
      );
    } else {
      showToast(
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
        title: "Transaction Deleted Successfully",
        subTitle: "Your transaction is deleted successfully",
      );
    } else {
      showToast(
        title: "Error Deleting Transaction",
        subTitle: "An error occurred while deleting your transaction",
      );
    }
  }
}
