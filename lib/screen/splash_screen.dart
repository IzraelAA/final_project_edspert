import 'package:final_project_edspert/screen/login_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LoginPage()));
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
              child: Image.asset("assets/splash_illustration.png")),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 192),
            child: const Text(
              'NONTON·ID',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
