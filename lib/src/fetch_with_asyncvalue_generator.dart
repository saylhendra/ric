import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_screen.dart';
import 'provider_generator.dart';

class FetchWithAsyncValueGenerator extends ConsumerWidget {
  const FetchWithAsyncValueGenerator({super.key});
  static const routeName = 'fetch-with-async-value-generator';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosProvider);

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context)
                .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => false),
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(
            'Fetch With\nAsyncValue Generator',
            textAlign: TextAlign.center,
          ),
        ),
        body: todos.when(
          data: (todos) {
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text('body: ${todos[index]['body']}\nemail: ${todos[index]['email']}\nid: ${todos[index]['id']}'),
                  ),
                );
              },
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          error: (error, stackTrace) => Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    color: Colors.yellow,
                    size: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('Error: $error'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text('Stack trace: $stackTrace'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
