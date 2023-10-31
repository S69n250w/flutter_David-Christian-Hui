import 'package:flutter/material.dart';
import 'package:david_c_mini/home_page.dart';
import 'package:david_c_mini/order_page.dart';
import 'package:david_c_mini/profile_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Color selectedColor = Colors.grey;
    final Color unselectedColor = Colors.grey;

    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          buildDayMenu("Senin", context, {
            "Daging Ayam Bumbu Sate Kacang": 25,
            "Ikan Lidah Goreng": 25,
            "Korean Chicken Honey Spicy": 25,
            "Dadar Sosis": 15,
            "Brokoli Tumis Jagung": 15,
          }),
          buildDayMenu("Selasa", context, {
            "Ayam Obat": 30,
            "Sambal Teri Pete": 20,
            "Kacang Panjang Tumis Udang": 15,
            "Ayam Tumis Jamur Kuping": 25,
            "Tauco Tahu Gulung": 15,
          }),
          buildDayMenu("Rabu", context, {
            "Brokoli Saus Jamur": 15,
            "Kepah Saus Padang": 20,
            "Kangkung Belacan": 25,
            "Ikan Jahe": 25,
            "Ayam Kemangi": 25,
          }),
          buildDayMenu("Kamis", context, {
            "Udang Saus Tiram": 30,
            "Sayur Lodeh": 15,
            "Peyek Udang": 20,
            "Rendang Ayam": 30,
            "Ayam Lada Hitam": 25,
          }),
          buildDayMenu("Jumat", context, {
            "Tauco Tahu Udang": 25,
            "Perkedel Jagung": 15,
            "Pecel": 15,
            "Chicken Katsu Kari Jepang": 25,
            "Tomyam Ikan Kakap": 30,
          }),
          buildDayMenu("Sabtu", context, {
            "Soto": 25,
            "Perkedel Kentang": 15,
            "Buncis Teri": 15,
            "Ayam Asam Manis": 20,
            "Ikan Kakap Sambalado": 30,
          }),
          // Tambahkan menu untuk hari lain di sini
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[850],
        selectedItemColor: selectedColor,
        unselectedItemColor: unselectedColor,
        currentIndex: _currentIndex, // Indeks yang dipilih
        onTap: (index) {
          // Fungsi ini dipanggil ketika item BottomNavigationBar ditekan
          setState(() {
            _currentIndex = index;
            if (index == 0) {
              // Jika item "Home" dipilih, arahkan ke MyHomePage
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MyHomePage()));
            } else if (index == 1) {
              // Jika item "Menu" dipilih, arahkan ke MenuPage
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MenuPage()));
            } else if (index == 2) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => OrderPage()));
            } else if (index == 3) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ProfilePage()));
            }
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Order'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget buildDayMenu(
      String day, BuildContext context, Map<String, int> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            day,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: items.entries.map((entry) {
            final item = entry.key;
            final price = entry.value;
            return InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => MyHomePage()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        item,
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    Text(
                      "($price K)",
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
