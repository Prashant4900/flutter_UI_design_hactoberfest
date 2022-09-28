import 'package:flutter/material.dart';
import 'package:hubble_money_ui/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            color: Colors.black,
          ),
          headlineSmall: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
          ),
          titleMedium: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: TextStyle(
            color: Colors.black,
          ),
          titleLarge: TextStyle(
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            wordSpacing: 2,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      home: const OnBoardingScreen(),
    );
  }
}
