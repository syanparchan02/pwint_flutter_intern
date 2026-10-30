import 'package:flutter/material.dart';
import 'package:flutter_training/model/user_data.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  static const users = [
    User(name: 'Aung Aung', email: 'aungaung@gmail.com', role: 'Admin'),
    User(name: 'Su Su', email: 'susu@gmail.com', role: 'Editor'),
    User(name: 'Hla Hla', email: 'hlahla@gmail.com', role: 'Author'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User List')),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];

          return Card(
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text(user.name),
              subtitle: Text(user.email),
              trailing: Text(user.role),
            ),
          );
        },
      ),
    );
  }
}
