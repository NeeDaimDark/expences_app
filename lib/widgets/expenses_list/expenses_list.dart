import 'package:expenses_tracker/models/expense.dart';
import 'package:expenses_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemove,
  });

  final void Function(Expense expense) onRemove;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder : (context, index) => Dismissible(
          key : ValueKey(expenses[index]),
          onDismissed: (direction){
            onRemove(expenses[index]);
          },
          child: ExpenseItem(expenses[index])),

    );
  }
}
