// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: OnBoarding2Page(),
//     ));

// class OnBoarding2Page extends StatefulWidget {
//   const OnBoarding2Page({super.key});

//   @override
//   _OnBoarding2PageState createState() => _OnBoarding2PageState();
// }

// class _OnBoarding2PageState extends State<OnBoarding2Page> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(seconds: 2), () {
//       Navigator.of(context).pushReplacement(MaterialPageRoute(
//         builder: (context) => OnBoarding2Page(),
//       ));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets/images/onboarding_page.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding2Page(),
    ));

class OnBoarding2Page extends StatefulWidget {
  const OnBoarding2Page({super.key});

  @override
  State<OnBoarding2Page> createState() => _OnBoarding2PageState();
}

class _OnBoarding2PageState extends State<OnBoarding2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image with BlendMode
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/onboarding_page.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.7),
                  BlendMode.dstATop
                ),
              ),
            ),
          ),
          // Linear Gradient Overlay for Top
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.black.withOpacity(0.7),
                ],
                stops: [0.0, 0.8],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),
            ),
          ),
          // Linear Gradient Overlay for Bottom
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black.withOpacity(0.7)
                ],
                stops: [0.0, 0.7, 1.0],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),
            ),
          ),
        ],
      ),
    );
  }
}