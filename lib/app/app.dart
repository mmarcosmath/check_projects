import 'package:flutter/material.dart';

import 'screens/login_screen.dart';

class CheckProject extends StatelessWidget {
  const CheckProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
