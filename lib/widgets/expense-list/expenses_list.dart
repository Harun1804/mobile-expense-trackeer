import 'package:expense_trackeer/widgets/expense-list/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_trackeer/model/expense.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: expenses.length ,itemBuilder: (ctx, index) => ExpenseItem(expenses[index]));
  }
}
