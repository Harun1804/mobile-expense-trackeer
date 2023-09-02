import 'package:expense_trackeer/widgets/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    home: const Expenses(),
  ));
}
