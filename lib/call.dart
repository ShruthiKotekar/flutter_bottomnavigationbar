import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView(
        children: [
          _ContactTile(
            name: 'Elizabeth',
            phoneNumber: '+91 9876578965',
            email: 'elizabeth@example.com',
            image: NetworkImage('https://cdn.pixabay.com/photo/2017/01/29/21/16/nurse-2019420__340.jpg'),
          ),
          _ContactTile(
            name: 'Jane Smith',
            phoneNumber: '+91 9876578965',
            email: 'janesmith@example.com',
            image: NetworkImage('https://cdn.pixabay.com/photo/2020/03/14/17/05/virus-4931227__340.jpg'),
          ),
          _ContactTile(
            name: 'Bob Johnson',
            phoneNumber: '+91 9876578965',
            email: 'bobjohnson@example.com',
            image: NetworkImage('https://cdn.pixabay.com/photo/2015/05/26/09/05/doctor-784329__340.png'),
          ),
        ],
      ),
    );
    
  }
}
class _ContactTile extends StatelessWidget {
  const _ContactTile({
    Key? key,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.image,
  }) : super(key: key);

  final String name;
  final String phoneNumber;
  final String email;
  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: image,
      ),
      title: Text(name),
      subtitle: Text(phoneNumber),
      trailing: IconButton(
        icon: Icon(Icons.message),
        onPressed: () {
          // TODO: Implement message functionality
        },
      ),
      onTap: () {
        // TODO: Implement contact detail screen
      },
    );
  }
}