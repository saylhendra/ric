// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoDomain _$TodoDomainFromJson(Map<String, dynamic> json) {
  return _TodoDomain.fromJson(json);
}

/// @nodoc
mixin _$TodoDomain {
  @JsonKey(name: "postId")
  int? get postId => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "body")
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoDomainCopyWith<TodoDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDomainCopyWith<$Res> {
  factory $TodoDomainCopyWith(
          TodoDomain value, $Res Function(TodoDomain) then) =
      _$TodoDomainCopyWithImpl<$Res, TodoDomain>;
  @useResult
  $Res call(
      {@JsonKey(name: "postId") int? postId,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "body") String? body});
}

/// @nodoc
class _$TodoDomainCopyWithImpl<$Res, $Val extends TodoDomain>
    implements $TodoDomainCopyWith<$Res> {
  _$TodoDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoDomainCopyWith<$Res>
    implements $TodoDomainCopyWith<$Res> {
  factory _$$_TodoDomainCopyWith(
          _$_TodoDomain value, $Res Function(_$_TodoDomain) then) =
      __$$_TodoDomainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "postId") int? postId,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "body") String? body});
}

/// @nodoc
class __$$_TodoDomainCopyWithImpl<$Res>
    extends _$TodoDomainCopyWithImpl<$Res, _$_TodoDomain>
    implements _$$_TodoDomainCopyWith<$Res> {
  __$$_TodoDomainCopyWithImpl(
      _$_TodoDomain _value, $Res Function(_$_TodoDomain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_TodoDomain(
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoDomain implements _TodoDomain {
  const _$_TodoDomain(
      {@JsonKey(name: "postId") this.postId,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "body") this.body});

  factory _$_TodoDomain.fromJson(Map<String, dynamic> json) =>
      _$$_TodoDomainFromJson(json);

  @override
  @JsonKey(name: "postId")
  final int? postId;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "body")
  final String? body;

  @override
  String toString() {
    return 'TodoDomain(postId: $postId, id: $id, name: $name, email: $email, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoDomain &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postId, id, name, email, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoDomainCopyWith<_$_TodoDomain> get copyWith =>
      __$$_TodoDomainCopyWithImpl<_$_TodoDomain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoDomainToJson(
      this,
    );
  }
}

abstract class _TodoDomain implements TodoDomain {
  const factory _TodoDomain(
      {@JsonKey(name: "postId") final int? postId,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "email") final String? email,
      @JsonKey(name: "body") final String? body}) = _$_TodoDomain;

  factory _TodoDomain.fromJson(Map<String, dynamic> json) =
      _$_TodoDomain.fromJson;

  @override
  @JsonKey(name: "postId")
  int? get postId;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "body")
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$_TodoDomainCopyWith<_$_TodoDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
