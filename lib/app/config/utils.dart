import 'package:intl/intl.dart';

class Utils {
  static formatDate(DateTime dateTime) {
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }

  static String vndFormat(int amount) {
    var formatCurrency = NumberFormat.currency(locale: 'vi_VN', symbol: '₫');

    String formattedAmount = formatCurrency.format(amount);

    return formattedAmount;
  }
}