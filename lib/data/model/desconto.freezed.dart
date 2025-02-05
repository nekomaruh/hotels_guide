// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../domain/entity/desconto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Desconto _$DescontoFromJson(Map<String, dynamic> json) {
  return _Desconto.fromJson(json);
}

/// @nodoc
mixin _$Desconto {
  double get desconto => throw _privateConstructorUsedError;

  /// Serializes this Desconto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Desconto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DescontoCopyWith<Desconto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescontoCopyWith<$Res> {
  factory $DescontoCopyWith(Desconto value, $Res Function(Desconto) then) =
      _$DescontoCopyWithImpl<$Res, Desconto>;
  @useResult
  $Res call({double desconto});
}

/// @nodoc
class _$DescontoCopyWithImpl<$Res, $Val extends Desconto>
    implements $DescontoCopyWith<$Res> {
  _$DescontoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Desconto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desconto = null,
  }) {
    return _then(_value.copyWith(
      desconto: null == desconto
          ? _value.desconto
          : desconto // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DescontoImplCopyWith<$Res>
    implements $DescontoCopyWith<$Res> {
  factory _$$DescontoImplCopyWith(
          _$DescontoImpl value, $Res Function(_$DescontoImpl) then) =
      __$$DescontoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double desconto});
}

/// @nodoc
class __$$DescontoImplCopyWithImpl<$Res>
    extends _$DescontoCopyWithImpl<$Res, _$DescontoImpl>
    implements _$$DescontoImplCopyWith<$Res> {
  __$$DescontoImplCopyWithImpl(
      _$DescontoImpl _value, $Res Function(_$DescontoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Desconto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desconto = null,
  }) {
    return _then(_$DescontoImpl(
      desconto: null == desconto
          ? _value.desconto
          : desconto // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DescontoImpl implements _Desconto {
  const _$DescontoImpl({required this.desconto});

  factory _$DescontoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DescontoImplFromJson(json);

  @override
  final double desconto;

  @override
  String toString() {
    return 'Desconto(desconto: $desconto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescontoImpl &&
            (identical(other.desconto, desconto) ||
                other.desconto == desconto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, desconto);

  /// Create a copy of Desconto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DescontoImplCopyWith<_$DescontoImpl> get copyWith =>
      __$$DescontoImplCopyWithImpl<_$DescontoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DescontoImplToJson(
      this,
    );
  }
}

abstract class _Desconto implements Desconto {
  const factory _Desconto({required final double desconto}) = _$DescontoImpl;

  factory _Desconto.fromJson(Map<String, dynamic> json) =
      _$DescontoImpl.fromJson;

  @override
  double get desconto;

  /// Create a copy of Desconto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DescontoImplCopyWith<_$DescontoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
