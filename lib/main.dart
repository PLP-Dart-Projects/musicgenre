import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List pages = [
    Text('Home'),
    Text('Reggae'),
    Text('afro'),
    Text('HipHop'),
  ];

  void changeScreen(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Genre'),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: changeScreen,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.music_note,
            ),
            label: 'Reggae',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.inbox,
            ),
            label: 'afro',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.music_note,
            ),
            label: 'HipHop',
          ),
        ],
      ),
    );
  }
}
