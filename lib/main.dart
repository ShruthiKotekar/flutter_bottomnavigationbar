import 'package:flutter/material.dart';
import 'package:flutter_bottomnavigationbar/account.dart';
import 'package:flutter_bottomnavigationbar/call.dart';
import 'package:flutter_bottomnavigationbar/home.dart';
import 'package:flutter_bottomnavigationbar/wallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Bottomnavbar() 
    );
  }
}
class Bottomnavbar extends StatefulWidget {
   @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {

  int _selectedScreenIndex = 0;
  void ontabbed_(int index){
  setState(() {
     _selectedScreenIndex=index;
    });
  }

   List _pages = [
    Home(),
    Wallet(),
    Call(),
    Account()
    ];
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: _pages[_selectedScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Color.fromARGB(255, 35, 0, 82)),
        BottomNavigationBarItem(icon: Icon(Icons.wallet),label: 'Wallet',backgroundColor: Colors.purple),
        BottomNavigationBarItem(icon: Icon(Icons.call),label: 'Call',backgroundColor: Color.fromARGB(255, 0, 44, 80)),
        BottomNavigationBarItem(icon: Icon(Icons.manage_accounts),label: 'Account',backgroundColor: Color.fromARGB(255, 102, 1, 40)),
        ],
        currentIndex: _selectedScreenIndex,
        onTap: ontabbed_,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 13,
        unselectedFontSize: 13,
       // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,
        ),
    );
  }
}
