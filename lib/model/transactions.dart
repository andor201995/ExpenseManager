import 'package:flutter/foundation.dart';

class Transations {
  final String id;
  final double amount;
  final String title;
  final DateTime date;

  Transations({
    @required this.amount,
    @required this.date,
    @required this.id,
    @required this.title,
  });
}
