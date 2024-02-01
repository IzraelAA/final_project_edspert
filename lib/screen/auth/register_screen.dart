import 'package:final_project_edspert/core/navigation/edspert_navigation.dart';
import 'package:final_project_edspert/screen/menu/home_screen.dart';
import 'package:final_project_edspert/utils/widgets/edspert_button.dart';
import 'package:final_project_edspert/utils/widgets/edspert_text_nonton_id.dart';
import 'package:final_project_edspert/utils/widgets/edspert_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = '/register-screen';
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 192,
                  ),
                  EdspertNontonId.apply(),
                  const SizedBox(
                    height: 104,
                  ),
                  Text(
                    "Daftar",
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  EdspertTextField.textField(
                      "alamat email", Icons.mail_outline),
                  const SizedBox(
                    height: 8,
                  ),
                  EdspertTextField.textField(
                      "username", Icons.account_circle_outlined),
                  const SizedBox(
                    height: 8,
                  ),
                  EdspertTextField.textField("password", Icons.lock_outline),
                  const SizedBox(
                    height: 8,
                  ),
                  EdspertTextField.textField(
                      "confirm password", Icons.lock_outline),
                  const SizedBox(
                    height: 32,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sudah punya akun?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            )),
                        Text("Masuk",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: EdspertButton().primary(
                text: "Daftar",
                onTap: () {
                  _onTapButtonRegister();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  void _onTapButtonRegister() {
    EdspertNavigation().pushReplacementNamed(HomeScreen.routeName);
  }
}
