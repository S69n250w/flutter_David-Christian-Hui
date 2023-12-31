import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: ForgotPasswordPage(),
));

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final Color colorPrimary4 = Color(0xFF783525);
  final Color colorOutline = Color(0xFF737373);
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 57),
                child: Image(
                  width: 30,
                  height: 30,
                  image: AssetImage('assets/icons/left_circle_1.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 57),
                child: Text(
                  "Lupa Password",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    color: Color(0xFF000000),
                    fontSize: 19,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ],
          ),
          // Padding for Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lupa Password",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    color: Color(0xFF010F07),
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                ),
                Text(
                  "Masukan email kamu, dan kita akan mengirimkan instruksinya reset password",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    color: colorOutline,
                    fontSize: 12,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.1
                  ),
                ),
              ],
            ),
          ),
          // Padding for TextField and email
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 220.0),
            children: [
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            color: Color(0xFF868686),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 80),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(colorPrimary4),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        // Logika untuk mengirim email reset password
                        // (Anda dapat menambahkan logika pengiriman email di sini)

                        _sendResetEmail();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 85, vertical: 14),
                        child: Text(
                          "Reset Password",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _sendResetEmail() {
    // Implementasi logika untuk mengirim email reset password
    // (Anda dapat menambahkan logika pengiriman email di sini)
    String email = _emailController.text;
    // TODO: Kirim email reset password ke alamat email yang diberikan
    print("Mengirim email password ke $email");
  }
}