import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterProvider = StateProvider<int>((ref) => 0);

class StateProviderUsed extends ConsumerWidget {
  const StateProviderUsed({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterState = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('State Provider Example')),
      body: Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tambah angka ini\n $counterState',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 30),
              ),
              FilledButton(
                onPressed: () {
                  ref.read(counterProvider.notifier).state++;
                },
                child: const Text('Tambah'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
