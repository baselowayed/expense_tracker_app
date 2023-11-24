import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

/*
expense Item is used to design the Data of the Expense so we can use it in expense List
 It takes an expense widget and returns its Data arranged
 */
class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge, //example of using the theme
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                //limited 2 widgets after the coma 12.333 => 12.33
                const Spacer(), //it will take all the possible space between the 2 neighbor widgets
                Row(children: [
                  Icon(categoryIcons[expense.category]),
                  const SizedBox(width: 8),
                  Text(expense.formatedDate),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
