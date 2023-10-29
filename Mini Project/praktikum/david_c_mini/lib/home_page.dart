import 'package:david_c_mini/menu_page.dart';
import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Color selectedColor = Colors.tealAccent;
    final Color unselectedColor = Colors.grey;

    final List<String> horizontalImagePaths = [
      'assets/ayam_asam_manis.jpg',
      'assets/ayam_kemangi.jpg',
      'assets/ayam_lada_hitam.jpg',
      'assets/ayam_obat.jpg'
    ];

    final List<String> verticalImagePaths = [
      'assets/ayam_asam_manis.jpg',
      'assets/ayam_kemangi.jpg',
      'assets/ayam_lada_hitam.jpg',
      'assets/ayam_obat.jpg',
      'assets/ayam_tumis_jamur_kuping.jpg',
      'assets/brokoli_saus_jamur.jpg'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Fresh"),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: horizontalImagePaths.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const MenuPage()));
                      },
                      child: Image(
                        width: 100,
                        image: AssetImage(horizontalImagePaths[index]),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // SizedBox(height: 20),
          
          Expanded(
            child: ListView(
              children: verticalImagePaths.map((imagePath) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const MenuPage()));
                      },
                      child: Image(
                        width: 100,
                        image: AssetImage(imagePath),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),

        // children: [
          // Row(
          //   children: [
          //     Container(
          //       child: ElevatedButton(
          //         onPressed: () {
          //           Navigator.of(context).push(
          //               MaterialPageRoute(builder: (_) => const MenuPage()));
          //         },
          //         child: Image(
          //             width: 139,
          //             image: AssetImage('assets/ayam_asam_manis.jpg')
          //         ),
          //       ),
          //     )
          //   ],
          // )
        // ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[850],
        selectedItemColor: selectedColor,
        unselectedItemColor: unselectedColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Order'),
          BottomNavigationBarItem(icon: Icon(Icons.usb), label: 'Profile'),
        ]
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //     Navigator.of(context).push(MaterialPageRoute(builder: (_) => const MenuPage()));
      //     },
      //     child: Text("Go to Menu Page")
      //   ),
      // ),
    );
  }
}