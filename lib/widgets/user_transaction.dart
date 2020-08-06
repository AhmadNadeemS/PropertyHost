import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
//    Transaction(
//      id: 't1',
//      title: 'New Shoes',
//      rating: '1 Star',
//      date: DateTime.now(),
//
//    ),
//    Transaction(
//      id: 't2',
//      title: 'Weekly Groceries',
//      rating: '2 Star',
//      date: DateTime.now(),
//    ),
  ];

  void _addNewTransaction(String txTitle, String txRating) {
    final newTx = Transaction(
      title: txTitle,
      rating: txRating,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
