import 'package:flutter/material.dart';

class AddGroupScreen extends StatefulWidget {
  @override
  _AddGroupScreenState createState() => _AddGroupScreenState();
}

class _AddGroupScreenState extends State<AddGroupScreen> {
  final TextEditingController _groupNameController = TextEditingController();
  final TextEditingController _membersController = TextEditingController();

  List<String> members = [];

  void _addMember() {
    setState(() {
      members.add(_membersController.text);
      _membersController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Group'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _groupNameController,
              decoration: InputDecoration(labelText: 'Group Name'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _membersController,
              decoration: InputDecoration(labelText: 'Member Name'),
            ),
            ElevatedButton(
              onPressed: _addMember,
              child: Text('Add Member'),
            ),
            SizedBox(height: 20),
            Text('Members: ${members.join(', ')}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement group creation logic
              },
              child: Text('Create Group'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _groupNameController.dispose();
    _membersController.dispose();
    super.dispose();
  }
}
