import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider_generator.g.dart';

@riverpod
class Todos extends _$Todos {
  @override
  FutureOr<List> build() async {
    var dio = Dio();
    var response = await dio.get('https://jsonplaceholder.typicode.com/comments');
    return response.data;
  }
}
