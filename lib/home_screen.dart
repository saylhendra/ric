import 'package:flutter/material.dart';
import 'package:ric_apps/product_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Riverpod Intensive Class'),
          actions: [
            Badge(
              label: Text('+99'),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
              backgroundColor: Colors.white,
              alignment: AlignmentDirectional.topEnd,
              isLabelVisible: true,
              largeSize: 20.0,
              padding: const EdgeInsets.all(5.0),
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              const Text('Hello Riverpod Intensive Class!'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, ProductScreen.routeName);
                },
                child: const Text('Click Me'),
              ),
              OutlinedButton(onPressed: () {}, child: const Text('Click Me')),
              TextButton(onPressed: () {}, child: const Text('Click Me')),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Click Me'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Click Me'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Click Me'),
              ),
              FilledButton(onPressed: () {}, child: const Text('Click Me')),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Click Me'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple.shade800,
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Click Me'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.purple.shade800,
                  side: BorderSide(color: Colors.purple.shade800),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Click Me'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.purple.shade800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
