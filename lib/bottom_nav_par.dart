import 'package:flutter/material.dart';

import 'main.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavtState();
}

class _BottomNavtState extends State<BottomNav> {
  int currentIndex = 0;
  List<Widget> screens = [
    abod(),
    abod(),
    abod(),
        abod(),
    abod(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 136, 143, 245),
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.wallet_travel), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.read_more)),
          BottomNavigationBarItem(icon: Icon(Icons.assignment_ind)),
          BottomNavigationBarItem(icon: Icon(Icons.summarize)),
        ],
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
