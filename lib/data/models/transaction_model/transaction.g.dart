// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      name: json['Name'] as String?,
      date: json['Date'] as String?,
      accountNo: json['Account_no'] as String?,
      refrenceId: json['Refrence_id'] as int?,
      amount: json['Amount'] as int?,
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Date': instance.date,
      'Account_no': instance.accountNo,
      'Refrence_id': instance.refrenceId,
      'Amount': instance.amount,
    };
