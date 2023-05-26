import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ric_apps/src/detail_todos.dart';

import 'home_screen.dart';

final todosProvider = FutureProvider.autoDispose<List>((ref) async {
  var dio = Dio();
  var response = await dio.get('https://jsonplaceholder.typicode.com/comments');
  return response.data;
});

final listTodoProvider = StateProvider<List>((ref) => []);

class FetchWithAsyncValue extends ConsumerWidget {
  const FetchWithAsyncValue({super.key});
  static const routeName = 'fetch-with-async-value';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todosProvider);

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.of(context)
                  .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => false),
              icon: const Icon(Icons.arrow_back)),
          title: const Text('Fetch With AsyncValue'),
        ),
        body: todos.when(
          data: (todos) {
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      ref.read(listTodoProvider.notifier).state = todos;
                      Navigator.of(context).pushNamed(
                        DetailTodos.routeName,
                      );
                    },
                    title: Text('body: ${todos[index]['body']}\nemail: ${todos[index]['email']}\nid: ${todos[index]['id']}'),
                  ),
                );
              },
            );
          },
          loading: () => const Center(
            child: Text('Loading...'),
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
