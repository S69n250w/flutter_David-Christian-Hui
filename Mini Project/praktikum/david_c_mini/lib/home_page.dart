import 'package:david_c_mini/menu_page.dart';
import 'package:david_c_mini/order_page.dart';
import 'package:david_c_mini/profile_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Color selectedColor = Colors.grey;
    final Color unselectedColor = Colors.grey;

    final List<String> horizontalImagePaths = [
      'assets/ayam_asam_manis.jpg',
      'assets/ayam_kemangi.jpg',
      'assets/ayam_lada_hitam.jpg',
      'assets/ayam_obat.jpg',
      'assets/ayam_asam_manis.jpg',
      'assets/ayam_kemangi.jpg',
      'assets/ayam_lada_hitam.jpg',
      'assets/ayam_obat.jpg',
      'assets/ayam_asam_manis.jpg',
      'assets/ayam_kemangi.jpg',
      'assets/ayam_lada_hitam.jpg',
      'assets/ayam_obat.jpg',
      'assets/ayam_asam_manis.jpg',
      'assets/ayam_kemangi.jpg',
      'assets/ayam_lada_hitam.jpg',
      'assets/ayam_obat.jpg',
      'assets/ayam_asam_manis.jpg',
      'assets/ayam_kemangi.jpg',
      'assets/ayam_lada_hitam.jpg',
      'assets/ayam_obat.jpg',
      'assets/ayam_asam_manis.jpg',
      'assets/ayam_kemangi.jpg',
      'assets/ayam_lada_hitam.jpg',
      'assets/ayam_obat.jpg',
      'assets/ayam_asam_manis.jpg',
      'assets/ayam_kemangi.jpg',
      'assets/ayam_lada_hitam.jpg',
      'assets/ayam_obat.jpg',
      'assets/ayam_asam_manis.jpg',
      'assets/ayam_kemangi.jpg',
      'assets/ayam_lada_hitam.jpg',
      'assets/ayam_obat.jpg',
      'assets/ayam_asam_manis.jpg',
      'assets/ayam_kemangi.jpg',
      'assets/ayam_lada_hitam.jpg',
      'assets/ayam_obat.jpg',
      'assets/ayam_asam_manis.jpg',
      'assets/ayam_kemangi.jpg',
      'assets/ayam_lada_hitam.jpg',
      'assets/ayam_obat.jpg',
    ];

    final List<String> verticalImagePaths = [
      'assets/ayam_asam_manis.jpg',
      'assets/ayam_kemangi.jpg',
      'assets/ayam_lada_hitam.jpg',
      'assets/ayam_obat.jpg',
      'assets/ayam_tumis_jamur_kuping.jpg',
      'assets/brokoli_saus_jamur.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Fresh"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: verticalImagePaths.length *
                  200.0, // Tinggi dinamis berdasarkan jumlah data
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: horizontalImagePaths.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const MenuPage()));
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
            SizedBox(height: 20),
            Container(
              height: 200, // Tinggi dinamis berdasarkan jumlah data
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: verticalImagePaths.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {
                          // Tambahkan navigasi ke halaman rekomendasi menu di sini
                        },
                        child: Image(
                          width: 100,
                          image: AssetImage(verticalImagePaths[index]),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Jika ingin menambahkan konten lagi, letakkan di bawah ini.
          ],
        ),
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
              Navigator.push(context, MaterialPageRoute(builder: (_) => MyHomePage()));
            } else if (index == 1) {
              // Jika item "Menu" dipilih, arahkan ke MenuPage
              Navigator.push(context, MaterialPageRoute(builder: (_) => MenuPage()));
            } else if (index == 2) {
              Navigator.push(context, MaterialPageRoute(builder: (_) => OrderPage()));
            } else if (index == 3) {
              Navigator.push(context, MaterialPageRoute(builder: (_) => ProfilePage()));
            }
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Order'),
          BottomNavigationBarItem(icon: Icon(Icons.usb), label: 'Profile'),
        ],
      ),
    );
  }
}



// import 'package:david_c_mini/menu_page.dart';
// import 'package:flutter/material.dart';
// // import 'package:path_provider/path_provider.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final Color selectedColor = Colors.tealAccent;
//     final Color unselectedColor = Colors.grey;

//     final List<String> horizontalImagePaths = [
//       'assets/ayam_asam_manis.jpg',
//       'assets/ayam_kemangi.jpg',
//       'assets/ayam_lada_hitam.jpg',
//       'assets/ayam_obat.jpg'
//     ];

//     final List<String> verticalImagePaths = [
//       'assets/ayam_asam_manis.jpg',
//       'assets/ayam_kemangi.jpg',
//       'assets/ayam_lada_hitam.jpg',
//       'assets/ayam_obat.jpg',
//       'assets/ayam_tumis_jamur_kuping.jpg',
//       'assets/brokoli_saus_jamur.jpg'
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Daily Fresh"),
//         centerTitle: true,
//       ),
//       body: ListView(
//         scrollDirection: Axis.vertical,
//         children: [
//           Container(
//             height: 150,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: horizontalImagePaths.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.of(context).push(
//                           MaterialPageRoute(builder: (_) => const MenuPage()));
//                       },
//                       child: Image(
//                         width: 100,
//                         image: AssetImage(horizontalImagePaths[index]),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           // SizedBox(height: 20),
          
//           // Expanded(
//           //   child: ListView(
//           //     children: verticalImagePaths.map((imagePath) {
//           //       return Padding(
//           //         padding: const EdgeInsets.all(8.0),
//           //         child: Container(
//           //           child: ElevatedButton(
//           //             onPressed: () {
//           //               Navigator.of(context).push(
//           //                 MaterialPageRoute(builder: (_) => const MenuPage()));
//           //             },
//           //             child: Image(
//           //               width: 100,
//           //               image: AssetImage(imagePath),
//           //             ),
//           //           ),
//           //         ),
//           //       );
//           //     }).toList(),
//           //   ),
//           // ),
//         ],
//       ),

//         // children: [
//           // Row(
//           //   children: [
//           //     Container(
//           //       child: ElevatedButton(
//           //         onPressed: () {
//           //           Navigator.of(context).push(
//           //               MaterialPageRoute(builder: (_) => const MenuPage()));
//           //         },
//           //         child: Image(
//           //             width: 139,
//           //             image: AssetImage('assets/ayam_asam_manis.jpg')
//           //         ),
//           //       ),
//           //     )
//           //   ],
//           // )
//         // ],
//       // ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.grey[850],
//         selectedItemColor: selectedColor,
//         unselectedItemColor: unselectedColor,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
//           BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Order'),
//           BottomNavigationBarItem(icon: Icon(Icons.usb), label: 'Profile'),
//         ]
//       ),
//       // body: Center(
//       //   child: ElevatedButton(
//       //     onPressed: () {
//       //     Navigator.of(context).push(MaterialPageRoute(builder: (_) => const MenuPage()));
//       //     },
//       //     child: Text("Go to Menu Page")
//       //   ),
//       // ),
//     );
//   }
// }