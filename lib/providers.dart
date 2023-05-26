import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
class MyCityController extends _$MyCityController {
  @override
  String build() => '____';

  void changeMyCityName(String newCityName) {
    state = newCityName;
  }
}
