// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../domain/entity/categoria_iten.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoriaIten _$CategoriaItenFromJson(Map<String, dynamic> json) {
  return _CategoriaIten.fromJson(json);
}

/// @nodoc
mixin _$CategoriaIten {
  String get nome => throw _privateConstructorUsedError;
  String get icone => throw _privateConstructorUsedError;

  /// Serializes this CategoriaIten to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoriaIten
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriaItenCopyWith<CategoriaIten> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriaItenCopyWith<$Res> {
  factory $CategoriaItenCopyWith(
          CategoriaIten value, $Res Function(CategoriaIten) then) =
      _$CategoriaItenCopyWithImpl<$Res, CategoriaIten>;
  @useResult
  $Res call({String nome, String icone});
}

/// @nodoc
class _$CategoriaItenCopyWithImpl<$Res, $Val extends CategoriaIten>
    implements $CategoriaItenCopyWith<$Res> {
  _$CategoriaItenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriaIten
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nome = null,
    Object? icone = null,
  }) {
    return _then(_value.copyWith(
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      icone: null == icone
          ? _value.icone
          : icone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriaItenImplCopyWith<$Res>
    implements $CategoriaItenCopyWith<$Res> {
  factory _$$CategoriaItenImplCopyWith(
          _$CategoriaItenImpl value, $Res Function(_$CategoriaItenImpl) then) =
      __$$CategoriaItenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nome, String icone});
}

/// @nodoc
class __$$CategoriaItenImplCopyWithImpl<$Res>
    extends _$CategoriaItenCopyWithImpl<$Res, _$CategoriaItenImpl>
    implements _$$CategoriaItenImplCopyWith<$Res> {
  __$$CategoriaItenImplCopyWithImpl(
      _$CategoriaItenImpl _value, $Res Function(_$CategoriaItenImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriaIten
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nome = null,
    Object? icone = null,
  }) {
    return _then(_$CategoriaItenImpl(
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      icone: null == icone
          ? _value.icone
          : icone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriaItenImpl implements _CategoriaIten {
  const _$CategoriaItenImpl({required this.nome, required this.icone});

  factory _$CategoriaItenImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriaItenImplFromJson(json);

  @override
  final String nome;
  @override
  final String icone;

  @override
  String toString() {
    return 'CategoriaIten(nome: $nome, icone: $icone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriaItenImpl &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.icone, icone) || other.icone == icone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nome, icone);

  /// Create a copy of CategoriaIten
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriaItenImplCopyWith<_$CategoriaItenImpl> get copyWith =>
      __$$CategoriaItenImplCopyWithImpl<_$CategoriaItenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriaItenImplToJson(
      this,
    );
  }
}

abstract class _CategoriaIten implements CategoriaIten {
  const factory _CategoriaIten(
      {required final String nome,
      required final String icone}) = _$CategoriaItenImpl;

  factory _CategoriaIten.fromJson(Map<String, dynamic> json) =
      _$CategoriaItenImpl.fromJson;

  @override
  String get nome;
  @override
  String get icone;

  /// Create a copy of CategoriaIten
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriaItenImplCopyWith<_$CategoriaItenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
