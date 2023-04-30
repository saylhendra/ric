import 'package:flutter/material.dart';
import 'package:ric_apps/home_screen.dart';
import 'package:ric_apps/product_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Intensive Class',
      theme: ThemeData(
        colorSchemeSeed: Colors.purple.shade800,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.purple.shade800,
          foregroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        colorScheme:
            ThemeData.dark().colorScheme.copyWith(primary: Colors.purple.shade800, secondary: Colors.purple.shade800),
        appBarTheme: AppBarTheme(
            color: Colors.purple.shade800, foregroundColor: Colors.white, iconTheme: IconThemeData(color: Colors.white)),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: true,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        ProductScreen.routeName: (context) => const ProductScreen(),
      },
    );
  }
}
