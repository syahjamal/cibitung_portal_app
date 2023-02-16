import 'package:cbt_portal/screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _lgTheme(),
      home: const LoginScreen(),
    );
  }
}

ThemeData _lgTheme() {
  return ThemeData(
      brightness: Brightness.light,
      primaryColor: const Color(0xFFA50034),
      primaryColorDark: Colors.black,
      colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF6B6B6B),
          secondary: const Color(0xFFCE007C),
          primaryContainer: const Color(0xFFFFA3B2)
      ),
      cardColor: Colors.grey[300],
      canvasColor: Colors.white,
      fontFamily: 'LGSmart');
}
