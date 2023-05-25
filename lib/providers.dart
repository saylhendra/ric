import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
class CityController extends _$CityController {
  @override
  String build() => 'Jakarta Selatan';
}
