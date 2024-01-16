import 'package:flutter/material.dart';
import 'package:mad_project/models/shop.dart';
import 'package:mad_project/screen/Login_page.dart';
import 'package:mad_project/screen/cart_screen.dart';
import 'package:mad_project/screen/more_fashion.dart';
import 'package:mad_project/screen/shop_page.dart';

import 'package:mad_project/screen/welcome_page.dart';
import 'package:mad_project/theme/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KS Brand',
      debugShowCheckedModeBanner: false,
      theme: LightMode,
      routes: {
        '/welcome_page': (context) => const Welcome_page(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_screen': (context) => const Cart_Screen(),
        '/login': (context) => const LoginPage(),
        '/more': (context) => const ShopPage2(),
      },
      home: const Welcome_page(),
    );
  }
}
