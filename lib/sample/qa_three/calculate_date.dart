String calculateDate({required String dateBefore, required String dateAfter}) {
  DateTime dateTime1 = DateTime.parse(dateBefore);
  DateTime dateTime2 = DateTime.parse(dateAfter);

  Duration difference = dateTime2.difference(dateTime1);

  int years = difference.inDays ~/ 365;
  int months = (difference.inDays % 365) ~/ 30;
  int days = (difference.inDays % 365) % 30;

  return " ${years.abs()} Tahun ${months.abs()} Bulan ${days.abs()} Hari";
}
