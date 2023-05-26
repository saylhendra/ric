// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodosDomain _$TodosDomainFromJson(Map<String, dynamic> json) {
  return _TodosDomain.fromJson(json);
}

/// @nodoc
mixin _$TodosDomain {
  List<dynamic>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodosDomainCopyWith<TodosDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosDomainCopyWith<$Res> {
  factory $TodosDomainCopyWith(
          TodosDomain value, $Res Function(TodosDomain) then) =
      _$TodosDomainCopyWithImpl<$Res, TodosDomain>;
  @useResult
  $Res call({List<dynamic>? data});
}

/// @nodoc
class _$TodosDomainCopyWithImpl<$Res, $Val extends TodosDomain>
    implements $TodosDomainCopyWith<$Res> {
  _$TodosDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodosDomainCopyWith<$Res>
    implements $TodosDomainCopyWith<$Res> {
  factory _$$_TodosDomainCopyWith(
          _$_TodosDomain value, $Res Function(_$_TodosDomain) then) =
      __$$_TodosDomainCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic>? data});
}

/// @nodoc
class __$$_TodosDomainCopyWithImpl<$Res>
    extends _$TodosDomainCopyWithImpl<$Res, _$_TodosDomain>
    implements _$$_TodosDomainCopyWith<$Res> {
  __$$_TodosDomainCopyWithImpl(
      _$_TodosDomain _value, $Res Function(_$_TodosDomain) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_TodosDomain(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodosDomain implements _TodosDomain {
  const _$_TodosDomain({final List<dynamic>? data}) : _data = data;

  factory _$_TodosDomain.fromJson(Map<String, dynamic> json) =>
      _$$_TodosDomainFromJson(json);

  final List<dynamic>? _data;
  @override
  List<dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodosDomain(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodosDomain &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodosDomainCopyWith<_$_TodosDomain> get copyWith =>
      __$$_TodosDomainCopyWithImpl<_$_TodosDomain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodosDomainToJson(
      this,
    );
  }
}

abstract class _TodosDomain implements TodosDomain {
  const factory _TodosDomain({final List<dynamic>? data}) = _$_TodosDomain;

  factory _TodosDomain.fromJson(Map<String, dynamic> json) =
      _$_TodosDomain.fromJson;

  @override
  List<dynamic>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_TodosDomainCopyWith<_$_TodosDomain> get copyWith =>
      throw _privateConstructorUsedError;
}
