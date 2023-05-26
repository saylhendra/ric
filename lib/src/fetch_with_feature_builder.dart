import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:ric_apps/src/home_screen.dart';

class FetchWithFutureBuilder extends StatelessWidget {
  const FetchWithFutureBuilder({super.key});
  static const routeName = 'fetch-with-future-builder';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context)
                .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const HomeScreen()), (route) => false),
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Fetch with FutureBuilder'),
        ),
        body: FutureBuilder(
          future: _fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              Logger().wtf(snapshot.toString());
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4.0,
                    child: ListTile(
                      title: Text(snapshot.data?[index]['title'].toString() ?? ''),
                    ),
                  );
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }

  Future<List> _fetchData() async {
    var dio = Dio();
    var response = await dio.get('https://jsonplaceholder.typicode.com/todos');
    Logger().w('🚀 [FetchWithFutureBuilder] _fetchData] response: ${response.data}');
    return response.data;
  }
}
