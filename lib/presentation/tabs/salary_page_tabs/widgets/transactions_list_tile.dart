import 'package:flutter/material.dart';
import 'package:shiftsync_admin/data/models/transaction_model/transaction.dart';
import 'package:shiftsync_admin/presentation/widgets/bold_title_text.dart';
import 'package:shiftsync_admin/presentation/widgets/title_text.dart';

class TransactionListTile extends StatelessWidget {
  const TransactionListTile({
    super.key,
    required this.transaction,
  });
  final Transaction transaction;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BoldTitleText(title: '${transaction.name}'),
            RowItem(
                title: 'Date ', value: '${transaction.date?.substring(0, 10)}'),
            RowItem(title: 'Account Number', value: '${transaction.accountNo}'),
            RowItem(title: 'Reference ID ', value: '${transaction.refrenceId}'),
            RowItem(title: 'Amount ', value: '${transaction.amount}'),
          ],
        ),
      ),
    );
  }
}

class RowItem extends StatelessWidget {
  const RowItem({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
      child: Row(
        children: [
          Expanded(child: TitileText(title: title)),
          Expanded(
            child: Text(
              ': $value',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
