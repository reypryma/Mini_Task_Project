String calculateDenominations(int amount) {
  List<int> denominations = [100000, 50000, 20000, 10000, 5000, 1000];
  Map<int, int> denominationCounts = {};

  String result = 'Denominate ${amount} into: \n';
  for (int denomination in denominations) {
    int count = amount ~/ denomination;
    if (count > 0) {
      denominationCounts[denomination] = count;
      amount -= count * denomination;
      result += 'Rp. $denomination,-: $count\n';
    }
  }

  return result;
}