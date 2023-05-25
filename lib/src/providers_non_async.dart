import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers_non_async.g.dart';

@riverpod
class CityController extends _$CityController {
  @override
  String build() => 'Jakarta Selatan';
}

@riverpod
class CounterCtrl extends _$CounterCtrl {
  @override
  int build() => 0;

  void doIncrement() => state++;

  void doDecrement() => state--;
}

@riverpod
class LuasPersegiCtrl extends _$LuasPersegiCtrl {
  @override
  int build() => 0;

  int doHitungLuasPersegi(int panjang, int lebar) => panjang * lebar;
}
