import 'package:intl/intl.dart';

bool isNumeric(String str) {
  RegExp numeric = RegExp(r'^-?[0-9]+$');
  return numeric.hasMatch(str);
}


String getFormattedDate(String dtTxt) {
  DateTime date = DateTime.parse(dtTxt);
  DateFormat formatter = DateFormat('E, dd MMM yyyy');
  String formattedDate = formatter.format(date);
  return formattedDate;
}
