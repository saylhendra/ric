// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider_generator.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listTodoHash() => r'd03a63973e8b8a41a0c7238dab008b6025d29d43';

/// See also [ListTodo].
@ProviderFor(ListTodo)
final listTodoProvider =
    AsyncNotifierProvider<ListTodo, List<dynamic>>.internal(
  ListTodo.new,
  name: r'listTodoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$listTodoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ListTodo = AsyncNotifier<List<dynamic>>;
String _$listCartHash() => r'c518b11df2bfc6302d349f104b583c1c7a74ba51';

/// See also [ListCart].
@ProviderFor(ListCart)
final listCartProvider =
    AutoDisposeNotifierProvider<ListCart, List<dynamic>>.internal(
  ListCart.new,
  name: r'listCartProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$listCartHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ListCart = AutoDisposeNotifier<List<dynamic>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
