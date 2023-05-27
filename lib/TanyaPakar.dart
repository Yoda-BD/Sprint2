import 'package:flutter/material.dart';

import 'Chat.dart';

class TanyaPakar extends StatefulWidget {
  const TanyaPakar({Key? key}) : super(key: key);

  @override
  State<TanyaPakar> createState() => _TanyaPakarState();
}

class _TanyaPakarState extends State<TanyaPakar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                // Navigasi ke halaman ChatPage saat CustomContainer 1 diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatPage()),
                );
              },
              child: CustomContainer(
                icon: Icons.person,
                text: 'Nama Pakar',
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                // Navigasi ke halaman ChatPage saat CustomContainer 2 diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatPage()),
                );
              },
              child: CustomContainer(
                icon: Icons.person,
                text: 'Nama Pakar',
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                // Navigasi ke halaman ChatPage saat CustomContainer 3 diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatPage()),
                );
              },
              child: CustomContainer(
                icon: Icons.person,
                text: 'Nama Pakar',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomContainer({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.red,
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
