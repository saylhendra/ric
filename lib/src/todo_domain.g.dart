// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoDomain _$$_TodoDomainFromJson(Map<String, dynamic> json) =>
    _$_TodoDomain(
      postId: json['postId'] as int?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$_TodoDomainToJson(_$_TodoDomain instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
