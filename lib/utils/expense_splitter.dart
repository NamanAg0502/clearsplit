class ExpenseSplitter {
  static List<double> splitEqually(
      double totalAmount, int numberOfParticipants) {
    final double splitAmount = totalAmount / numberOfParticipants;
    return List.generate(numberOfParticipants, (_) => splitAmount);
  }

  static List<double> splitByPercentage(
      double totalAmount, List<double> percentages) {
    final List<double> splitAmounts = percentages.map((percentage) {
      return (totalAmount * percentage) / 100;
    }).toList();
    return splitAmounts;
  }

  static List<double> splitByCustomRatios(
      double totalAmount, List<double> ratios) {
    final double totalRatios =
        ratios.reduce((value, element) => value + element);
    final List<double> splitAmounts = ratios.map((ratio) {
      return (totalAmount * ratio) / totalRatios;
    }).toList();
    return splitAmounts;
  }
}
