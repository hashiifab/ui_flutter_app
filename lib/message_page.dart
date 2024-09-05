import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Pesan")),
      body: const Column(
        children: [
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Profil 1"),
            subtitle: Text("Pesan dari Profil 1..."),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Profil 2"),
            subtitle: Text("Pesan dari Profil 2..."),
          ),
        ],
      ),
    );
  }
}
