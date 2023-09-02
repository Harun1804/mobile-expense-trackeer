import 'package:expense_trackeer/model/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(title: 'flutter course', amount: 13.99, date: DateTime.now(), category: Category.food),
    Expense(title: 'movie', amount: 16.99, date: DateTime.now(), category: Category.leisure),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("The chart"),
          Text("The list")
        ],
      ),
    );
  }
}
