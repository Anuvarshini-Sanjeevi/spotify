

import 'package:app/first.dart';
import 'package:app/fourth.dart';
import 'package:app/second.dart';
import 'package:app/third.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



void main() {
  runApp(const homepage());
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
   int selectedinx = 0;
  final screens = [
   Home(),
   Second(),
   Third(),
   Fourth()
  ];
  void currentindex(int index) {
    setState(() {
      selectedinx = index;
      print(selectedinx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black26,
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedinx,
            onTap: currentindex,
           
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), backgroundColor: Colors.black45,label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), backgroundColor: Colors.black45, label: "Search"),
              BottomNavigationBarItem(icon: Icon(Icons.library_books_outlined), backgroundColor: Colors.black45,label: "Your library"),
               BottomNavigationBarItem(icon: Icon(Icons.workspace_premium_outlined), backgroundColor: Colors.black45,label: "Premium")
            ]),
        body: screens[selectedinx],
        
      ),
    );
  }
}
