// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_domain.freezed.dart';
part 'todo_domain.g.dart';

@freezed
class TodoDomain with _$TodoDomain {
  const factory TodoDomain({
    @JsonKey(name: "postId") int? postId,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "body") String? body,
  }) = _TodoDomain;

  factory TodoDomain.fromJson(Map<String, dynamic> json) => _$TodoDomainFromJson(json);
}
