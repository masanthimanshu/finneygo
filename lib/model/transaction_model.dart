import 'package:intl/intl.dart';

List<TransactionModel> transactionModelFromJson(data) {
  return List<TransactionModel>.from(
    data.map((x) => TransactionModel.fromJson(x)),
  );
}

class TransactionModel {
  final String id;
  final int amount;
  final String date;
  final String input;
  final String category;
  final String subCategory;

  const TransactionModel({
    required this.id,
    required this.date,
    required this.input,
    required this.amount,
    required this.category,
    required this.subCategory,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    final dateTime = DateTime.parse(json["updatedAt"]);

    return TransactionModel(
      id: json["_id"],
      input: json["input"],
      amount: json["amount"],
      category: json["category"],
      subCategory: json["subCategory"],
      date: DateFormat('dd MMM yyyy').format(dateTime),
    );
  }
}
