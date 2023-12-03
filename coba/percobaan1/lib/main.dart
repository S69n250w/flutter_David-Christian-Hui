import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percobaan1/tes1.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding2Page(),
    ));

class OnBoarding2Page extends StatefulWidget {
  const OnBoarding2Page({super.key});

  @override
  State<OnBoarding2Page> createState() => _OnBoarding2PageState();
}

class _OnBoarding2PageState extends State<OnBoarding2Page> with SingleTickerProviderStateMixin {
  final Color colorPrimary3 = Color(0xFFF0AF9F);
  final Color colorOnSurface = Color(0xFF1D1D1D);
  final Color colorPrimary2 = Color(0xFFFCFCFC);
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300), // Adjust the duration as needed
    );

    // Create an ease-out animation curve
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeOut);

    // Start the animation
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image with ShaderMask for Front Gradient Overlay
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: [Colors.black.withOpacity(0.5), Colors.transparent],
                stops: [0.75, 1.0],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcOver,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding_page.png'),
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  colors: [Colors.black.withOpacity(0.65), Colors.transparent],
                  stops: [0.3, 1.0],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcOver,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                color: Colors.transparent
              ),
            ),
          ),
          // Positioned widget to shift the position of the logo
          Positioned(
            top: MediaQuery.of(context).size.height * 0.238,
            left: MediaQuery.of(context).size.width * 0.375 - 50,
            child: Container(
              child: Image(
                image: AssetImage('assets/images/logo/alta_resto_logo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Positioned widget for text in the center
          Positioned(
            top: MediaQuery.of(context).size.height * 0.642,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: Text(
                    "Makanan siap disajikan untukmu",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      height: 1.2,
                      letterSpacing: 0.8
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.758,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: Text(
                    "Dengan Alta-Resto, selalu ada makanan terbaik ada untukmu",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: colorPrimary3,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      height: 1.2,
                      letterSpacing: 0.8
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Align widget for the clickable button
          FadeTransition(
            opacity: _animation,
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 68),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => Testing1()
                      )
                    );
                  },
                  child: Container(
                    width: 348,
                    height: 51,
                    decoration: BoxDecoration(
                      color: colorPrimary2,
                      borderRadius: BorderRadius.circular(37),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Mulai",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily,
                          color: colorOnSurface,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}