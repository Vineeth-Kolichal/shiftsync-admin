part of 'transaction_tab_bloc.dart';

@freezed
class TransactionTabState with _$TransactionTabState {
  const factory TransactionTabState.initial({
    required bool isLoading,
    TransactionModel? transactionModel,
  }) = _Initial;
  factory TransactionTabState.laoding() =>
      const TransactionTabState.initial(isLoading: true);
}
