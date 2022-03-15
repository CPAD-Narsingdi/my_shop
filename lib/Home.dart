import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  var pageList = [
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.orange,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          autofocus: false,
          decoration: InputDecoration(
              hintText: "What would you like buy?",
              helperStyle: TextStyle(color: Colors.black45),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(50),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(50),
              ),
              filled: true,
              fillColor: Colors.grey[200],
              hintStyle: TextStyle(color: Colors.black45),
              prefixIcon: Icon(Icons.search)),
          style: TextStyle(color: Colors.black45, fontSize: 16.0),
          onChanged: (query) => {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined), color: Colors.grey[600])
        ],
      ),
      drawer: Container(),
      body: pageList[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
    );
  }
}
