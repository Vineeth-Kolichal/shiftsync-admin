import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/transaction_tab/transaction_tab_bloc.dart';

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
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Center(
            child: Text('${state.transactionModel?.transactions?.length}'));
      },
    );
  }
}
