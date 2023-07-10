import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/data/models/transaction_model/transaction_model.dart';
import 'package:shiftsync_admin/data/repositories/repositories.dart';

part 'transaction_tab_event.dart';
part 'transaction_tab_state.dart';
part 'transaction_tab_bloc.freezed.dart';

@injectable
class TransactionTabBloc
    extends Bloc<TransactionTabEvent, TransactionTabState> {
  TransactionsRepository transactionsRepository;
  TransactionTabBloc(this.transactionsRepository)
      : super(TransactionTabState.laoding()) {
    on<TransactionTabEvent>((event, emit) async {
      emit(TransactionTabState.laoding());
      TransactionModel model = await transactionsRepository.getAllTrasactions();
      final newState =
          state.copyWith(isLoading: false, transactionModel: model);
      emit(newState);
    });
  }
}
