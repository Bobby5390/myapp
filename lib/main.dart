import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Lab06AdvancedUI());
}

class Lab06AdvancedUI extends StatefulWidget {
  const Lab06AdvancedUI({super.key});

  State<Lab06AdvancedUI> createState() => _Lab06AdvancedUIState();
}

class _Lab06AdvancedUIState extends State<Lab06AdvancedUI> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Photos",
      home: Scaffold(
        appBar: AppBar(title: Text("Photos")),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: CachedNetworkImage(
                imageUrl:
                    "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=600",
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    Icon(Icons.error, size: 50, color: const Color.fromARGB(255, 247, 243, 242)),
              ),
            ),
            Expanded(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3J5dsBx3vMuAqRwoBmLbIq1O1L73Yls6QSxyTvjZo1ZeIUWIx9SueXOPAXXLy8kHzxXc&usqp=CAU',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.photo), label: "Photos"),
            BottomNavigationBarItem(icon: Icon(Icons.collections), label: "Collections"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          ],
        ),
      ),
    );
  }
}
