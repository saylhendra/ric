import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider_generator.g.dart';

@Riverpod(keepAlive: true)
class ListTodo extends _$ListTodo {
  @override
  FutureOr<List> build() async {
    var dio = Dio();
    var response = await dio.get('https://jsonplaceholder.typicode.com/comments');
    return response.data;
  }
}

@riverpod
class ListCart extends _$ListCart {
  @override
  List build() {
    return [];
  }

  void doAddToCart() {
    state = [...state, 'new item'];
  }
}





// @riverpod
// class Todos extends _$Todos {
//   @override
//   FutureOr<List<TodoDomain>> build() async {
//     var dio = Dio();
//     var response = await dio.get('https://jsonplaceholder.typicode.com/comments');

//     List<TodoDomain> todos = [];
//     for (var item in response.data) {
//       todos.add(TodoDomain.fromJson(item));
//     }
//     return todos;
//   }
// }
