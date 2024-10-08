import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final messages = [
      {'name': 'Joni', 'message': 'Yeyyyyyyyyyyyyy...'},
      {'name': 'Aga', 'message': 'pleaseeeeeee...'},
      {'name': 'Joni', 'message': 'Yeyyyyyyyyyyyyy...'},
      {'name': 'Aga', 'message': 'pleaseeeeeee...'},
      {'name': 'Joni', 'message': 'Yeyyyyyyyyyyyyy...'},
      {'name': 'Aga', 'message': 'pleaseeeeeee...'},
    ];

    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Message",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 104, 173, 229),
          // Warna biru muda
          iconTheme: IconThemeData(color: Colors.white)),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final messageData = messages[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: ListTile(
                leading: const CircleAvatar(child: Icon(Icons.person)),
                title: Text(messageData['name'] ?? ''),
                subtitle: Text(messageData['message'] ?? ''),
              ),
            ),
          );
        },
      ),
    );
  }
}
