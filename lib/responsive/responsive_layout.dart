import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  const ResponsiveLayout({
    super.key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1024) {
          // Desktop layout
          return desktop;
        } else if (constraints.maxWidth >= 600) {
          // Tablet layout
          return tablet;
        } else {
          // Mobile layout
          return mobile;
        }
      },
    );
  }
}
