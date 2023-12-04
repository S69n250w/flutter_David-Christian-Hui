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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email'
                    ),
                  ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 120),
                  child: ElevatedButton(
                    style: ButtonStyle(
                    ),
                    onPressed: () {
                      // Logika untuk mengirim email reset password
                      // (Anda dapat menambahkan logika pengiriman email di sini)
                      _sendResetEmail();
                    },
                    child: Text(
                      "Reset Password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                ),
              ],
            ),
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
    print("Mengirim email reset password ke $email");
  }
}