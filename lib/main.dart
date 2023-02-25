import 'package:flutter_application_2/screens/auth/onboarding.dart';
import 'package:flutter_application_2/screens/home/profile_screen.dart';
import 'package:flutter_application_2/screens/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';

import 'screens/auth/signin_screen.dart';
import 'screens/auth/signup_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/home/cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: "Ubuntu",
      ),
      // home: const SigninScreen(),
      initialRoute: "/onboarding",
      routes: {
        "/profile":(context) => profile(),
        "/cart":(context) =>cart() ,
        "/onboarding":(context) => const onboarding_screen(),
        "/signin": (context) => const SigninScreen(),
        "/signup": (context) => const SignupScreen(),
        "/home": (context) => const HomeScreen(),
        "/product_details": (context) => const ProductDetailsScreen(),
      },
    );
  }
}