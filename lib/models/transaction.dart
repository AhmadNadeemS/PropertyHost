import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final String title;
  final String rating;
  final DateTime date;


  Transaction({
    @required this.id,
    @required this.title,
    @required this.rating,
    @required this.date,

  });
}
