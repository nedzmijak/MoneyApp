import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moneyapp/src/features/transactions/models/transaction_model.dart';

class TransactionCubit extends Cubit<List<Transaction>> {
  TransactionCubit() : super([]);

  void addTransaction(Transaction transaction) {
    final newState = [...state, transaction];
    emit(newState);
  }

  void removeTransaction(String id) {
    emit(state.where((transaction) => transaction.id != id).toList());
  }
}
