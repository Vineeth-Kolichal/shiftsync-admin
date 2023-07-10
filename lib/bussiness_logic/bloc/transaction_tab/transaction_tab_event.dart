part of 'transaction_tab_bloc.dart';

@freezed
class TransactionTabEvent with _$TransactionTabEvent {
  const factory TransactionTabEvent.started() = Started;
}
