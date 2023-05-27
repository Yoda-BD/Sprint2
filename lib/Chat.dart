import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Jumlah pesan dalam daftar
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    // Avatar pengirim pesan
                    child: Text('A'),
                  ),
                  title: Text('Pengirim Pesan'),
                  subtitle: Text('Isi pesan...'),
                );
              },
            ),
          ),
          Divider(), // Pembatas antara daftar pesan dan input pesan
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Ketik pesan...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
