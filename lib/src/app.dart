import 'package:flutter/material.dart';
import 'package:ric_apps/src/fetch_with_feature_builder.dart';
import 'package:ric_apps/src/fetch_with_stream_builder.dart';
import 'package:ric_apps/src/notification_screen.dart';
import 'package:ric_apps/src/product_screen.dart';

import 'home_screen.dart';

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
        primaryColorDark: Colors.purple,
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        colorScheme: ThemeData.dark().colorScheme.copyWith(
              primary: Colors.purple.shade800,
              secondary: Colors.purple.shade800,
            ),
        appBarTheme: AppBarTheme(
          color: Colors.purple.shade800,
          foregroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
        ),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        ProductScreen.routeName: (context) => const ProductScreen(),
        NotificationScreen.routeName: (context) => const NotificationScreen(),
        FetchWithFutureBuilder.routeName: (context) => const FetchWithFutureBuilder(),
        FetchWithStreamBuilder.routeName: (context) => const FetchWithStreamBuilder(),
      },
    );
  }
}
