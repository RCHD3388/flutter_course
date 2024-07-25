import 'package:expanse_tracker_app/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expanse_tracker_app/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final void Function(Expense expense) onRemoveExpense;
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(
            expenses[index]), // unique identification for removable widget
        background: Container(
          color: Theme.of(context).colorScheme.error,
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal // left + right margin
          ),
        ),
        onDismissed: (direction) {
          // ignore direction
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(
          expenses[index],
        ),
      ),
    );
  }
}
