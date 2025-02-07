// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../domain/entity/iten.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Iten _$ItenFromJson(Map<String, dynamic> json) {
  return _Iten.fromJson(json);
}

/// @nodoc
mixin _$Iten {
  String get nome => throw _privateConstructorUsedError;

  /// Serializes this Iten to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Iten
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItenCopyWith<Iten> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItenCopyWith<$Res> {
  factory $ItenCopyWith(Iten value, $Res Function(Iten) then) =
      _$ItenCopyWithImpl<$Res, Iten>;
  @useResult
  $Res call({String nome});
}

/// @nodoc
class _$ItenCopyWithImpl<$Res, $Val extends Iten>
    implements $ItenCopyWith<$Res> {
  _$ItenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Iten
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nome = null,
  }) {
    return _then(_value.copyWith(
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItenImplCopyWith<$Res> implements $ItenCopyWith<$Res> {
  factory _$$ItenImplCopyWith(
          _$ItenImpl value, $Res Function(_$ItenImpl) then) =
      __$$ItenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nome});
}

/// @nodoc
class __$$ItenImplCopyWithImpl<$Res>
    extends _$ItenCopyWithImpl<$Res, _$ItenImpl>
    implements _$$ItenImplCopyWith<$Res> {
  __$$ItenImplCopyWithImpl(_$ItenImpl _value, $Res Function(_$ItenImpl) _then)
      : super(_value, _then);

  /// Create a copy of Iten
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nome = null,
  }) {
    return _then(_$ItenImpl(
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItenImpl implements _Iten {
  const _$ItenImpl({required this.nome});

  factory _$ItenImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItenImplFromJson(json);

  @override
  final String nome;

  @override
  String toString() {
    return 'Iten(nome: $nome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItenImpl &&
            (identical(other.nome, nome) || other.nome == nome));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nome);

  /// Create a copy of Iten
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItenImplCopyWith<_$ItenImpl> get copyWith =>
      __$$ItenImplCopyWithImpl<_$ItenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItenImplToJson(
      this,
    );
  }
}

abstract class _Iten implements Iten {
  const factory _Iten({required final String nome}) = _$ItenImpl;

  factory _Iten.fromJson(Map<String, dynamic> json) = _$ItenImpl.fromJson;

  @override
  String get nome;

  /// Create a copy of Iten
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItenImplCopyWith<_$ItenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
