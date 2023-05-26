import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_screen.dart';
import 'provider_generator.dart';

class FetchWithAsyncValueGenerator extends ConsumerWidget {
  const FetchWithAsyncValueGenerator({super.key});
  static const routeName = 'fetch-with-async-value-generator';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(listTodoProvider);

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context)
                .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => false),
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Fetch with\nRiverpod Generator', textAlign: TextAlign.center),
        ),
        body: todos.when(
          data: (datas) {
            return RefreshIndicator.adaptive(
              onRefresh: () async {
                return ref.invalidate(listTodoProvider);
              },
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: datas.length,
                itemBuilder: (context, index) {
                  var singleTodo = datas[index];

                  return Card(
                    color: Colors.amber,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.purpleAccent,
                        child: Text('${singleTodo['id']}'),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${singleTodo['email']}'),
                          Text('${singleTodo['body']}'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator.adaptive()),
          error: (error, stackTrace) => Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, color: Colors.red, size: 60),
                  Padding(padding: const EdgeInsets.only(top: 16), child: Text('Error: $error')),
                ],
              ),
            ),
          ),
        ));
  }
}
