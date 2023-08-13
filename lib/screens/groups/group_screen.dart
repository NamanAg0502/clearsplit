import 'package:flutter/material.dart';

class GroupsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Groups'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // List of groups (use ListView.builder)
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/add_group');
              },
              child: Text('Add Group'),
            ),
          ],
        ),
      ),
    );
  }
}
