import 'package:flutter/material.dart';

import 'views/widgets/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
home: SplashView(),
    );
  }
}