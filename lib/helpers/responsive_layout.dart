import 'package:flutter/material.dart';
import 'package:responsive_app/constants.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget webLayout;

  const ResponsiveLayout({required this.mobileLayout, required this.webLayout, super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth < mobileWidth ? mobileLayout : webLayout;
    });
  }
}