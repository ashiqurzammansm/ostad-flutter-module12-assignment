import 'package:flutter/material.dart';
import 'responsive/responsive_layout.dart';
import 'layouts/desktop_layout.dart';
import 'layouts/tablet_layout.dart';
import 'layouts/mobile_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Web',
      home: ResponsiveLayout(
        desktop: DesktopLayout(),
        tablet: TabletLayout(),
        mobile: MobileLayout(),
      ),
    );
  }
}
