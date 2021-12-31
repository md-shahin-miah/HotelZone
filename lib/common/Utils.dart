

import 'package:intl/intl.dart';

getFormatedDate(_date) {
  var inputFormat = DateFormat('yyyy-MM-dd HH:mm');
  var inputDate = inputFormat.parse(_date);
  var outputFormat = DateFormat('yyyy-MM-dd');
  return outputFormat.format(inputDate);
}