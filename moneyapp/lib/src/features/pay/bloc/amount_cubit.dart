import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moneyapp/src/features/pay/bloc/amoun_state.dart';

class AmountCubit extends Cubit<AmountState> {
  AmountCubit() : super(const AmountState());

  void addDigit(String digit) {
    String newAmount = state.amount;

    if (digit == ".") {
      if (newAmount.contains(".")) return;
      newAmount += digit;
    } else {
      if (newAmount == "0") {
        newAmount = digit;
      } else {
        newAmount += digit;
      }
    }

    emit(state.copyWith(amount: newAmount));
  }

  void deleteDigit() {
    if (state.amount.isEmpty || state.amount == "0") {
      return;
    }

    String newAmount = state.amount.substring(0, state.amount.length - 1);

    if (newAmount.isEmpty || newAmount == ".") {
      newAmount = "0";
    }

    emit(state.copyWith(amount: newAmount));
  }

  void resetAmount() {
    emit(const AmountState());
  }
}
