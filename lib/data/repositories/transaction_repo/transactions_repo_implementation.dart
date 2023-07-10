import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/data/data_provider/transations_api_provider/transations_api_provider.dart';
import 'package:shiftsync_admin/data/models/transaction_model/transaction_model.dart';
import 'package:shiftsync_admin/data/repositories/repositories.dart';
import 'package:shiftsync_admin/util/dependancy_injection/dependancy_injection.dart';

@LazySingleton(as: TransactionsRepository)
class TransactionsRepoImplementation implements TransactionsRepository {
  TransactionsApiProvider apiProvider = getIt<TransactionsApiProvider>();
  @override
  Future<TransactionModel> getAllTrasactions() async {
    final response = await apiProvider.getAllTransationsDetails();
    TransactionModel transactionModel = response.fold((sts) {
      return TransactionModel(status: sts, transactions: []);
    }, (resp) {
      return TransactionModel.fromJson(resp.data);
    });
    return transactionModel;
  }
}
