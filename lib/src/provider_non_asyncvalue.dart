import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_screen.dart';

//1
final cityCtrlProvider = Provider((ref) => "Jakarta Selatan");
final copyrightCtrlProvider = Provider((ref) => "© ConceptCoder @2023");

//2
// final counterCtrlProvider = StateProvider<int>((ref) => 0);

class ProviderNonAsyncValue extends ConsumerWidget {
  const ProviderNonAsyncValue({super.key});
  static const routeName = 'provider-non-asyncvalue';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //1
    final cityState = ref.watch(cityCtrlProvider);
    //2
    // final counterState = ref.watch(counterCtrlProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context)
              .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => false),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Provider, State Provider'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10.0),
          //1
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(cityState),
            ],
          ),

          const SizedBox(height: 10.0),
          //2
          // Card(
          //   child: ListTile(title: Text(counterState.toString())),
          // ),
          // Wrap(
          //   children: [
          //     FilledButton(
          //         onPressed: () {
          //           // ref.read(counterCtrlProvider.notifier).state -= 1;
          //           ref.read(counterCtrlProvider.notifier).doIncrement();
          //         },
          //         child: const Text('+')),
          //     FilledButton(
          //         onPressed: () {
          //           // ref.read(counterCtrlProvider.notifier).state += 1;
          //           ref.read(counterCtrlProvider.notifier).doDecrement();
          //         },
          //         child: const Text('-')),
          //   ],
          // )
        ],
      ),

      //1
      persistentFooterButtons: [
        Center(child: Text(ref.watch(copyrightCtrlProvider))),
      ],
    );
  }
}
