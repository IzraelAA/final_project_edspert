import 'package:final_project_edspert/utils/svg_dir.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SvgPicture.asset(
              SvgDir.home,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
