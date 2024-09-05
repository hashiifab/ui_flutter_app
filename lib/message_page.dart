import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Message")),
      body: const Column(
        children: [
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Joni"),
            subtitle: Text("Yeyyyyyyyyyyyyy..."),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Aga"),
            subtitle: Text("pleaseeeeeee..."),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Joni"),
            subtitle: Text("Yeyyyyyyyyyyyyy..."),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Aga"),
            subtitle: Text("pleaseeeeeee..."),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Joni"),
            subtitle: Text("Yeyyyyyyyyyyyyy..."),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text("Aga"),
            subtitle: Text("pleaseeeeeee..."),
          ),
        ],
      ),
    );
  }
}
