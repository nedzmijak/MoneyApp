class Transaction {
  final String id;
  final String amount;
  final String type;
  final String name;
  final DateTime date;
  final bool isRepeating;

  Transaction({
    required this.id,
    required this.amount,
    required this.type,
    required this.name,
    required this.date,
    this.isRepeating = false,
  });
}
