import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: MediaQuery.of(context).size.height * 1 / 4,
      margin: EdgeInsets.only(left: 14, right: 14, bottom: 10),
      //padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: Colors.black26,
        ),
        borderRadius: new BorderRadius.only(
          bottomLeft: const Radius.circular(10.0),
          bottomRight: const Radius.circular(10.0),
        ),
      ),
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    //vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(4),
                  child: Container(
                    width: 2 * MediaQuery.of(context).size.width * 1 / 13,
                    height: MediaQuery.of(context).size.height * 1 / 20,
                    child: Row(
                      children: [
                        Text(
                          //  tx.rating,
                          //'\$${tx.amount}',
                          //DateFormat.yMMMd().format(transactions[index].date),
                        DateFormat.yMMMd().format(widget.transactions[index].date),
                          //("Review No: ${transactions.length+1}"),
                          //("Review No: ${_itemCount.length+1}"),
                          //"Review No: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 8,
                            color: Colors.purple,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 2),
                          width:
                              1.09 * MediaQuery.of(context).size.width * 1 / 2,
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              widget.transactions[index].title,
                              //  softWrap: true,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[400],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          //DateFormat.yMMMd().format(tx.date),
                          //tx.rating,
                          widget.transactions[index].rating,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: widget.transactions.length,
//      children: transactions.map((tx) {
//
//      }).toList(),
      ),
    );
  }
}
