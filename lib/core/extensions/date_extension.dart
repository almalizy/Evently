
import 'package:intl/intl.dart';

extension DateFormate on DateTime {
  String get getMonthFormDateTime {
    DateFormat formatter  = DateFormat("MMMM");
    return formatter.format(this);
  }

  String get toFormatedDay {
    DateFormat formatter  = DateFormat("dd-mm-yyyy");
    return formatter.format(this);
  }
}