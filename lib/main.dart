import 'package:clearsplit/screens/expenses/add_expense_screen.dart';
import 'package:clearsplit/screens/expenses/expense_screen.dart';
import 'package:clearsplit/screens/groups/add_group_screen.dart';
import 'package:clearsplit/screens/groups/group_screen.dart';
import 'package:clearsplit/screens/home/home_screen.dart';
import 'package:clearsplit/screens/payments/add_payment_screen.dart';
import 'package:clearsplit/screens/payments/payments_screen.dart';
import 'package:clearsplit/screens/profile/setting_screen.dart';
import 'package:clearsplit/screens/reports/report_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClearSplit App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Customize your app's theme
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/expenses': (context) => ExpensesScreen(),
        '/add_expense': (context) => AddExpenseScreen(),
        '/groups': (context) => GroupsScreen(),
        '/add_group': (context) => AddGroupScreen(),
        '/payments': (context) => PaymentsScreen(),
        '/add_payment': (context) => AddPaymentScreen(),
        '/reports': (context) => ReportsScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}
