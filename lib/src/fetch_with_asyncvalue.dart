import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_screen.dart';

final todosProvider = FutureProvider.autoDispose<List>((ref) async {
  var dio = Dio();
  var response = await dio.get('https://jsonplaceholder.typicode.com/comments');
  return response.data;
});

class FetchWithAsyncValue extends ConsumerWidget {
  const FetchWithAsyncValue({super.key});
  static const routeName = 'fetch-with-async-value';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<dynamic>> todos = ref.watch(todosProvider);

    //AsynValue == FutureBuilder == StreamBuilder

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context)
                .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => false),
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Fetch With AsyncValue'),
        ),
        body: todos.when(
          data: (todos) {
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(todos[index]['body'].toString()),
                  ),
                );
              },
            );
          },
          loading: () => const Center(
            child: Text('Loading....'),
          ),
          error: (error, stackTrace) => Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    color: Colors.red,
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
