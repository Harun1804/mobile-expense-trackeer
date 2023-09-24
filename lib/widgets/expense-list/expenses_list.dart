import 'package:expense_trackeer/widgets/expense-list/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_trackeer/model/expense.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length ,
        itemBuilder: (ctx, index) => Dismissible(
          key: ValueKey(expenses[index]),
          child: ExpenseItem(expenses[index]),
          onDismissed: (direction) {
            onRemoveExpense(expenses[index]);
          },
        )
    );
  }
}
