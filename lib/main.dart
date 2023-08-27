import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:mybookly/constants.dart';
import 'package:mybookly/core/utlis/app_router.dart';



void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor,
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)
      ),
      
      debugShowCheckedModeBanner: false,
   
    );
  }
}
