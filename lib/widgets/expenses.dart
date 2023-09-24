import 'package:expense_trackeer/widgets/expense-list/expenses_list.dart';
import 'package:expense_trackeer/model/expense.dart';
import 'package:expense_trackeer/widgets/new_expense.dart';
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
  
  void _openAddExpenseOverlay () {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: _addExpense,)
    );
  }

  void _addExpense(Expense expense){
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense){
    setState(() {
      _registeredExpenses.remove(expense);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Expense Tracker"),
        actions: [
          IconButton(
              onPressed: _openAddExpenseOverlay,
              icon: const Icon(Icons.add)
          )
        ],
      ),
      body: Column(
        children: [
          Text("The chart"),
          Expanded(child: ExpenseList(expenses: _registeredExpenses, onRemoveExpense: _removeExpense,))
        ],
      ),
    );
  }
}
