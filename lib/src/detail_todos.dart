import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'provider_generator.dart';

class DetailTodos extends ConsumerWidget {
  final List? todos;
  const DetailTodos({
    super.key,
    this.todos,
  });

  static const routeName = 'fetch-with-async-value-detail';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todosList = ref.watch(listTodoProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Todos'),
      ),
      body: Center(
        child: Text('Detail Todos ${todosList.toString()}'),
      ),
    );
  }
}
