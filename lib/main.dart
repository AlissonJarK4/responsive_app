import 'package:flutter/material.dart';
import 'package:responsive_app/helpers/responsive_layout.dart';
import 'package:responsive_app/pages/first_page.dart';
import 'package:responsive_app/pages/mobile_first_page.dart';
import 'package:responsive_app/pages/web_first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(
        mobileLayout: MobileFirstPage(),
        webLayout: WebFirstPage(),
      ),
    );
  }
}
