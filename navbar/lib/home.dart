import 'package:flutter/material.dart';
import 'package:navbar/product.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int runIndex = 0;
  List pages= const[ 
  Center(child: Text(""),),
    ProductScreen(),
  
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
    home: Scaffold(
      body:pages[runIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
       
        showUnselectedLabels: false,
        onTap: (index) {
         setState(() {
           runIndex=index;
         });
        },
        currentIndex: runIndex,
        items: const[
       BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      backgroundColor: Colors.indigo
        ),
          BottomNavigationBarItem(
        icon: Icon(Icons.shopping_basket),
        label: 'Product',
         backgroundColor: Colors.indigo
        ),
     
        ],
    ),
    )
    );
  }
}