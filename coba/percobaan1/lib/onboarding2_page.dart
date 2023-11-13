import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding2Page(),
    ));

class OnBoarding2Page extends StatefulWidget {
  const OnBoarding2Page({super.key});

  @override
  _OnBoarding2PageState createState() => _OnBoarding2PageState();
}

class _OnBoarding2PageState extends State<OnBoarding2Page> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => OnBoarding2Page(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/onboarding_page.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// class OnboardingPage2Content extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             'Onboarding Page 2',
//             style: TextStyle(
//               fontSize: 24.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 20.0),
//           Text(
//             'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(height: 20.0),
//           ElevatedButton(
//             onPressed: () {
//               // Navigasi ke halaman selanjutnya atau halaman beranda jika diperlukan
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(builder: (context) => HomeScreen()),
//               );
//             },
//             child: Text('Get Started'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Screen'),
//       ),
//       body: Center(
//         child: Text('Welcome to the App!'),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: OnboardingPage(),
//   ));
// }

// class OnboardingPage extends StatelessWidget {
//   final PageController _pageController = PageController();
//   final int _numPages = 3; // Jumlah halaman onboarding

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           PageView.builder(
//             controller: _pageController,
//             itemCount: _numPages,
//             itemBuilder: (BuildContext context, int index) {
//               return OnboardingPageItem(index: index);
//             },
//           ),
//           Positioned(
//             bottom: 20.0,
//             left: 20.0,
//             right: 20.0,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 _buildSkipButton(context),
//                 _buildNextButton(context),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildSkipButton(BuildContext context) {
//     return TextButton(
//       onPressed: () {
//         // Navigasi ke halaman selanjutnya atau beranda jika diperlukan
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => HomeScreen()),
//         );
//       },
//       child: Text(
//         'Skip',
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 18.0,
//         ),
//       ),
//     );
//   }

//   Widget _buildNextButton(BuildContext context) {
//     return TextButton(
//       onPressed: () {
//         if (_pageController.page! < _numPages - 1) {
//           _pageController.nextPage(
//             duration: Duration(milliseconds: 500),
//             curve: Curves.ease,
//           );
//         } else {
//           // Navigasi ke halaman beranda atau halaman selanjutnya jika diperlukan
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(builder: (context) => HomeScreen()),
//           );
//         }
//       },
//       child: Text(
//         'Next',
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 18.0,
//         ),
//       ),
//     );
//   }
// }

// class OnboardingPageItem extends StatelessWidget {
//   final int index;

//   const OnboardingPageItem({Key? key, required this.index}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Sesuaikan konten onboarding sesuai kebutuhan
//     List<String> titles = [
//       'Welcome to MyApp',
//       'Explore Features',
//       'Get Started'
//     ];

//     List<String> descriptions = [
//       'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//       'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
//       'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
//     ];

//     List<Color> colors = [Colors.blue, Colors.green, Colors.orange];

//     return Container(
//       color: colors[index],
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             titles[index],
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 24.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 20.0),
//           Text(
//             descriptions[index],
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 16.0,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Screen'),
//       ),
//       body: Center(
//         child: Text('Welcome to the App!'),
//       ),
//     );
//   }
// }