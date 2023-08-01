

import 'package:intl/intl.dart';

class DateUtils1 {
    static String formatDate({required DateTime date}) {
    return DateFormat("dd-MM-yyyy").format(date).toString();
  }
}