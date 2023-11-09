import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My app $currentPage'),
        elevation: 0,
      ),
      body: PageView(
        children: [
          customScreen(color: Colors.lightBlue),
          customScreen(color: Colors.orange),
          customScreen(color: Colors.grey)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          currentPage = index;
          setState(() {});
        },
        backgroundColor: const Color.fromARGB(255, 76, 102, 175),
        selectedItemColor: const Color.fromARGB(255, 40, 243, 33),
        unselectedItemColor: const Color.fromARGB(255, 244, 238, 54),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.verified_user), label: 'User'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'User')
        ],
      ),
    );
  }
}

class customScreen extends StatelessWidget {
  const customScreen({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: const Center(
        child: Text('Custom Screen'),
      ),
    );
  }
}
