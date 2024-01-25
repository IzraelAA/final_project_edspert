import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: const Text(
              'Login Page',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          Text("name"),
          TextField(
            onChanged: (value) {},
          ),
          Text("password"),
          TextField(
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
