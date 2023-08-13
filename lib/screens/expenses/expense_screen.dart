import 'package:flutter/material.dart';

class ExpensesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expenses'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // List of expenses (use ListView.builder)
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/add_expense');
              },
              child: Text('Add Expense'),
            ),
          ],
        ),
      ),
    );
  }
}
