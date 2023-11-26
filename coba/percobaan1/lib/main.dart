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
                  colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                  stops: [0.3, 1.0],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcOver,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.32,
                color: Colors.transparent
              ),
            ),
          ),
          // ShaderMask(
          //   shaderCallback: (Rect bounds) {
          //     return LinearGradient(
          //       colors: [Colors.black.withOpacity(0.8), Colors.transparent],
          //       stops: [0.5, 0.3],
          //       begin: Alignment.bottomCenter,
          //       end: Alignment.topCenter,
          //     ).createShader(bounds);
          //   },
          //   blendMode: BlendMode.srcOver,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage('assets/images/onboarding_page.png'),
          //         fit: BoxFit.cover
          //       ),
          //     ),
          //   ),
          // ),
          // Background Image with BlendMode
          // Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/images/onboarding_page.png'),
          //       fit: BoxFit.cover,
          //       // colorFilter: ColorFilter.mode(
          //       //   Colors.transparent,
          //       //   BlendMode.srcOver
          //       // ),
          //     ),
          //   ),
          // ),
          // ShaderMask for Top Gradient Overlay
          // ShaderMask(
          //   shaderCallback: (Rect bounds) {
          //     return LinearGradient(
          //       colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
          //       stops: [0.0, 1.0],
          //       begin: Alignment.topCenter,
          //       end: Alignment.bottomCenter,
          //     ).createShader(bounds);
          //   },
          //   blendMode: BlendMode.srcOver,
          //   child: Container(),
          // ),
          // ShaderMask for Bottom Gradient Overlay
          // ShaderMask(
          //   shaderCallback: (Rect bounds) {
          //     return LinearGradient(
          //       colors: [ Colors.transparent, Colors.black.withOpacity(0.7)],
          //       stops: [0.0, 1.0],
          //       begin: Alignment.topCenter,
          //       end: Alignment.bottomCenter,
          //     ).createShader(bounds);
          //   },
          //   blendMode: BlendMode.srcOver,
          //   child: Container(),
          // ),
          Container(
            child: Image(
              image: AssetImage('assets/images/logo/alta_resto_logo.png')
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}