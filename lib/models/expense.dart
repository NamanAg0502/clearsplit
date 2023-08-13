class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String groupId;
  final List<String> participants; // User IDs of participants

  Expense({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.groupId,
    required this.participants,
  });
}
