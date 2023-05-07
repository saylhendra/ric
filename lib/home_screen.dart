import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:ric_apps/cart_container.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counterCart = 0;

  @override
  Widget build(BuildContext context) {
    Logger().w('🏠 [HomeScreen] build]');

    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('RI - Class'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CartCountainer(counter: counterCart),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello Riverpod Intensive Class!'),
              FilledButton.icon(
                icon: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    counterCart++;
                  });
                },
                label: const Text('Tambah ke Cart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
