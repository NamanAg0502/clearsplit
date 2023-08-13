import 'package:flutter/material.dart';

class PaymentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // List of payments (use ListView.builder)
            ElevatedButton(
              onPressed: () {
                // Navigate to Add Payment Screen
                Navigator.pushNamed(context, '/add_payment');
              },
              child: Text('Make Payment'),
            ),
          ],
        ),
      ),
    );
  }
}
