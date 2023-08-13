import 'package:flutter/material.dart';

class AddExpenseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Expense'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Expense input form (use TextFormField)
            ElevatedButton(
              onPressed: () {
                // Implement expense submission logic
              },
              child: Text('Submit Expense'),
            ),
          ],
        ),
      ),
    );
  }
}
