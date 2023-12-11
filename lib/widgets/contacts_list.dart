import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../models/user_model.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key, required this.users});

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 280),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Text('Constacts',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 18,
                          fontWeight: FontWeight.w500))),
              Icon(Icons.search, color: Colors.grey[600]),
              const SizedBox(width: 8),
              Icon(Icons.more_horiz, color: Colors.grey[600]),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                final User user = users[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: UserCard(user: user),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
