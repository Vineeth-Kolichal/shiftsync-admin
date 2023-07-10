import 'package:json_annotation/json_annotation.dart';

import 'transaction.dart';

part 'transaction_model.g.dart';

@JsonSerializable()
class TransactionModel {
  @JsonKey(name: 'Transactions')
  List<Transaction>? transactions;
  int? status;

  TransactionModel({this.transactions, this.status});

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return _$TransactionModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TransactionModelToJson(this);
}
