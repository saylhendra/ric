import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';

class FetchWithStreamBuilder extends StatelessWidget {
  const FetchWithStreamBuilder({super.key});
  static const routeName = 'fetch-with-stream-builder';

  @override
  Widget build(BuildContext context) {
    final Stream<int> bids = (() {
      late final StreamController<int> controller;
      controller = StreamController<int>(
        onListen: () async {
          await Future<void>.delayed(const Duration(seconds: 2));
          controller.add(1);
          await Future<void>.delayed(const Duration(seconds: 1));
          await controller.close();
        },
      );
      return controller.stream;
    })();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context)
              .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => false),
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Fetch with StreamBuilder'),
      ),
      body: StreamBuilder(
        stream: bids,
        builder: (context, snapshot) {
          List<Widget> children;
          if (snapshot.hasError) {
            children = <Widget>[
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Error: ${snapshot.error}'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text('Stack trace: ${snapshot.stackTrace}'),
              ),
            ];
          } else {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                children = const <Widget>[
                  Icon(Icons.info, color: Colors.blue, size: 60),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Select a lot'),
                  ),
                ];
              case ConnectionState.waiting:
                children = const <Widget>[
                  SizedBox(width: 60, height: 60, child: CircularProgressIndicator()),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text('Awaiting bids...'),
                  ),
                ];
              case ConnectionState.active:
                children = <Widget>[
                  const Icon(Icons.check_circle_outline, color: Colors.green, size: 60),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('\$${snapshot.data}'),
                  ),
                ];
              case ConnectionState.done:
                children = <Widget>[
                  const Icon(Icons.info, color: Colors.blue, size: 60),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('\$${snapshot.data} (closed)'),
                  ),
                ];
            }
          }

          return SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children,
            ),
          );
        },
      ),
    );
  }
}
