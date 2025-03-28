import 'package:flutter/material.dart';

class UserInfoPage extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String lifeStory;

  const UserInfoPage({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
    required this.lifeStory,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Info')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name', style: const TextStyle(fontSize: 18)),
            Text('Email: $email', style: const TextStyle(fontSize: 18)),
            Text('Phone: $phone', style: const TextStyle(fontSize: 18)),
            Text('Life Story: $lifeStory', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
