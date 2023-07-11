import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/transaction_tab/transaction_tab_bloc.dart';
import 'package:shiftsync_admin/presentation/widgets/empty_item_widget.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';

import 'widgets/transactions_list_tile.dart';

class SalaryTransactionsTab extends StatelessWidget {
  const SalaryTransactionsTab({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<TransactionTabBloc>().add(const Started());
    });
    return BlocBuilder<TransactionTabBloc, TransactionTabState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.transactionModel!.transactions.isEmpty) {
          return const EmptyItemWidget(message: 'Transaction History is Empty');
        }
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.separated(
              itemBuilder: ((context, index) {
                return TransactionListTile(
                  transaction: state.transactionModel!.transactions[index],
                );
              }),
              separatorBuilder: ((context, index) {
                return kHeightTen;
              }),
              itemCount: state.transactionModel!.transactions.length),
        );
      },
    );
  }
}
