import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:ric_apps/providers.dart';
import 'package:ric_apps/src/fetch_with_asyncvalue.dart';
import 'package:ric_apps/src/fetch_with_asyncvalue_generator.dart';
import 'package:ric_apps/src/fetch_with_feature_builder.dart';
import 'package:ric_apps/src/notification_screen.dart';
import 'package:ric_apps/src/provider_generator.dart';
import 'package:ric_apps/src/provider_non_asyncvalue.dart';

import 'cart_container.dart';
import 'fetch_with_stream_builder.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const routeName = 'home-screen';
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int counterCart = 0;

  @override
  Widget build(BuildContext context) {
    Logger().w('🏠 [HomeScreen] build]');
    final myCityState = ref.watch(myCityControllerProvider);

    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: InkWell(
              onTap: () => ref.read(myCityControllerProvider.notifier).changeMyCityName('You Clicked Me'),
              child: Text(myCityState)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () => Navigator.of(context).pushNamed(NotificationScreen.routeName),
                  child: CartCountainer(counter: counterCart)),
            ),
          ],
        ),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              FilledButton.tonal(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(ProviderNonAsyncValue.routeName);
                  },
                  child: const Text('Provider, State Provider')),
              const SizedBox(height: 10.0),
              FilledButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(FetchWithFutureBuilder.routeName);
                  },
                  child: const Text('Fetch with FutureBuilder')),
              const SizedBox(height: 10.0),
              FilledButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(FetchWithStreamBuilder.routeName);
                  },
                  child: const Text('Fetch with StreamBuilder')),
              const SizedBox(height: 10.0),
              FilledButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(FetchWithAsyncValue.routeName);
                  },
                  child: const Text('Fetch with AsyncValue')),
              const SizedBox(height: 10.0),
              FilledButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(FetchWithAsyncValueGenerator.routeName);
                  },
                  child: const Text('Fetch with AsyncValue Generator')),
              const SizedBox(height: 10.0),
              Card(
                child: ListTile(
                  onTap: () => addToCart(),
                  leading: const Icon(Icons.ac_unit),
                  title: const Text('Click me to add to cart'),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () => addToCart(),
                  leading: const Icon(Icons.ac_unit),
                  title: const Text('Click me to add to cart'),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () => addToCart(),
                  leading: const Icon(Icons.ac_unit),
                  title: const Text('Click me to add to cart'),
                ),
              ),
              Text(ref.watch(listCartProvider).toString())
            ],
          ),
        ),
      ),
    );
  }

  addToCart() {
    Logger().w('🚢 [Sending state]');
    ref.read(listCartProvider.notifier).doAddToCart();
  }
}
