import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:clearsplit/models/expense.dart'; // Import your Expense model

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  _AddExpenseScreenState createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _amountController = TextEditingController();
  DateTime? _selectedDate; // Store the selected date

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void _submitExpense() {
    final title = _titleController.text;
    final amount = double.tryParse(_amountController.text) ?? 0.0;
    final id = UniqueKey().toString(); // Generate a unique ID for the expense

    if (title.isNotEmpty && amount > 0 && _selectedDate != null) {
      final newExpense = Expense(
        id: id,
        title: title,
        amount: amount,
        date: _selectedDate!,
      );
      // Here, you can add the newExpense to your list or Firebase

      Navigator.pop(context); // Navigate back to ExpensesScreen
    }
  }

  Future<void> _selectDate() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Expense'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Expense Title'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _selectDate,
              child: Text('Select Date'),
            ),
            SizedBox(height: 10),
            if (_selectedDate != null)
              Text(
                'Selected Date: ${DateFormat('yyyy-MM-dd').format(_selectedDate!)}',
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitExpense,
              child: Text('Add Expense'),
            ),
          ],
        ),
      ),
    );
  }
}
