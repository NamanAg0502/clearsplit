import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClearSplit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to ClearSplit!'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/expenses');
              },
              child: Text('View Expenses'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/groups');
              },
              child: Text('View Groups'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/payments');
              },
              child: Text('View Payments'),
            ),
          ],
        ),
      ),
    );
  }
}
