import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        centerTitle: true,
      ),
      body: Text('Senin'),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.grey[850],
      //   selectedItemColor: selectedColor,
      //   unselectedItemColor: unselectedColor,
      //   currentIndex: _currentIndex, // Indeks yang dipilih
      //   onTap: (index) {
      //     // Fungsi ini dipanggil ketika item BottomNavigationBar ditekan
      //     setState(() {
      //       _currentIndex = index;
      //       if (index == 0) {
      //         // Jika item "Home" dipilih, arahkan ke MyHomePage
      //         Navigator.push(context, MaterialPageRoute(builder: (_) => MyHomePage()));
      //       } else if (index == 1) {
      //         // Jika item "Menu" dipilih, arahkan ke MenuPage
      //         Navigator.push(context, MaterialPageRoute(builder: (_) => MenuPage()));
      //       } else if (index == 2) {
      //         Navigator.push(context, MaterialPageRoute(builder: (_) => OrderPage()));
      //       } else if (index == 3) {
      //         Navigator.push(context, MaterialPageRoute(builder: (_) => ProfilePage()));
      //       }
      //     });
      //   },
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
      //     BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Order'),
      //     BottomNavigationBarItem(icon: Icon(Icons.usb), label: 'Profile'),
      //   ],
      // ),
    );
  }
}