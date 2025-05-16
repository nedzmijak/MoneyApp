class AmountState {
  final String amount;

  const AmountState({this.amount = "0"});

  AmountState copyWith({String? amount}) {
    return AmountState(amount: amount ?? this.amount);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AmountState &&
            runtimeType == other.runtimeType &&
            amount == other.amount);
  }

  @override
  int get hashCode => amount.hashCode;
}
