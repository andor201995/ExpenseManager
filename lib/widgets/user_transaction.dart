import 'package:expenseTrackker/model/transactions.dart';
import 'package:expenseTrackker/widgets/new_transaction.dart';
import 'package:expenseTrackker/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransation extends StatefulWidget {
  @override
  _UserTransationState createState() => _UserTransationState();
}

class _UserTransationState extends State<UserTransation> {
  final List<Transations> _transactions = [
    Transations(
      amount: 10.1,
      date: DateTime.now(),
      id: 'id1',
      title: 'Veggies',
    ),
    Transations(
      amount: 10.1,
      date: DateTime.now(),
      id: 'id1',
      title: 'Veggies',
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transations(
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
      title: txTitle,
    );

    setState(() {
      _transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
