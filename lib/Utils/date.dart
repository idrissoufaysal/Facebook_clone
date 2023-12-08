import 'package:intl/intl.dart';

class DateTimeHelper {
  static String getRelativeTime(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inMinutes < 1) {
      return "À l'instant";
    } else if (difference.inHours < 1) {
      return "Il y a ${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''}";
    } else if (difference.inDays < 1) {
      return "Il y a ${difference.inHours} heure${difference.inHours > 1 ? 's' : ''}";
    } else if (difference.inDays < 7) {
      return "Il y a ${difference.inDays} jour${difference.inDays > 1 ? 's' : ''}";
    } else if (difference.inDays < 30) {
      final weeks = (difference.inDays / 7).floor();
      return "Il y a $weeks semaine${weeks > 1 ? 's' : ''}";
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return "Il y a $months mois${months > 1 ? 's' : ''}";
    } else {
      final years = (difference.inDays / 365).floor();
      return "Il y a $years an${years > 1 ? 's' : ''}";
    }
  }

  // static String formatToDMY(DateTime date) {
  //   String day = date.day.toString();
  //   String month = DateFormat("MMM", "fr_FR").format(date)[0].toUpperCase() +
  //       DateFormat("MMM", "fr_FR").format(date).substring(1);
  //   String year = date.year.toString();
  //   return day + " " + month + " " + year;
  // }
}