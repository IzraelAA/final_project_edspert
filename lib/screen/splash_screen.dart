import 'package:final_project_edspert/core/navigation/edspert_navigation.dart';
import 'package:final_project_edspert/screen/auth/login_screen.dart';
import 'package:final_project_edspert/utils/image_dir.dart';
import 'package:final_project_edspert/utils/widgets/edspert_text_nonton_id.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash-screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      EdspertNavigation().pushReplacementNamed(LoginScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(height: double.infinity, width: double.infinity),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Image.asset(ImageDir.splashIllustration)),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 192),
            child: EdspertNontonId.apply(),
          ),
        ],
      ),
    );
  }
}
