// To parse this JSON data, do
//
//     final todosDomain = todosDomainFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'todos_domain.freezed.dart';
part 'todos_domain.g.dart';

@freezed
class TodosDomain with _$TodosDomain {
  const factory TodosDomain({
    List? data,
  }) = _TodosDomain;

  factory TodosDomain.fromJson(Map<String, dynamic> json) => _$TodosDomainFromJson(json);
}
