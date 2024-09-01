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
    return MaterialApp(
      title: 'Flutter Web',
      debugShowCheckedModeBanner: false,  // Disable the debug banner
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveLayout(
        desktop: DesktopLayout(),
        tablet: TabletLayout(),
        mobile: MobileLayout(),
      ),
    );
  }
}
