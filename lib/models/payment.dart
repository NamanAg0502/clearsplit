class Payment {
  final String id;
  final String senderId;
  final String receiverId;
  final double amount;
  final DateTime date;

  Payment({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.amount,
    required this.date,
  });
}
