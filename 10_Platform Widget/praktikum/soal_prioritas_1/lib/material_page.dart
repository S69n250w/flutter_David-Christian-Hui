import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Color selectedColor = Colors.tealAccent;
    final Color unselectedColor = Colors.grey;

    return Scaffold(
      appBar: AppBar(
          title: Text("MaterialApp"),
          backgroundColor: Colors.grey[800],
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey[850],
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 115,
                child: DrawerHeader(
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightGreen[700],
                child: Text(
                  "L",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
              title: Text(
                "Leanne Graham",
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),
              ),
              subtitle: Text(
                "1-770-736-8031 x56442",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightGreen[700],
                child: Text(
                  "E",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
              title: Text(
                "Ervin Howell",
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),
              ),
              subtitle: Text(
                "010-692-6593 x09125",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightGreen[700],
                child: Text(
                  "C",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
              title: Text(
                "Clementine Bauch",
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),
              ),
              subtitle: Text(
                "1-463-123-4447",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightGreen[700],
                child: Text(
                  "P",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
              title: Text(
                "Patricia Lebsack",
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),
              ),
              subtitle: Text(
                "493-170-9623 x156",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightGreen[700],
                child: Text(
                  "C",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
              title: Text(
                "Chelsey Dietrich",
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),
              ),
              subtitle: Text(
                "(254)954-1289",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightGreen[700],
                child: Text(
                  "M",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
              title: Text(
                "Mrs. Dennis Schulist",
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),
              ),
              subtitle: Text(
                "1-477-935-8478 x6430",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightGreen[700],
                child: Text(
                  "K",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
              title: Text(
                "Kurtis Weissnat",
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),
              ),
              subtitle: Text(
                "210.067.6132",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey[850],
            selectedItemColor: selectedColor,
            unselectedItemColor: unselectedColor,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ]),
    );
  }
}
