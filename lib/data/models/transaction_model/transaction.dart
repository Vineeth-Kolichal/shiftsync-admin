import 'package:json_annotation/json_annotation.dart';

part 'transaction.g.dart';

@JsonSerializable()
class Transaction {
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'Date')
  String? date;
  @JsonKey(name: 'Account_no')
  String? accountNo;
  @JsonKey(name: 'Refrence_id')
  int? refrenceId;
  @JsonKey(name: 'Amount')
  int? amount;

  Transaction({
    this.name,
    this.date,
    this.accountNo,
    this.refrenceId,
    this.amount,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return _$TransactionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}
