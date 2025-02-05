// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../domain/entity/periodo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Periodo _$PeriodoFromJson(Map<String, dynamic> json) {
  return _Periodo.fromJson(json);
}

/// @nodoc
mixin _$Periodo {
  String get tempoFormatado => throw _privateConstructorUsedError;
  String get tempo => throw _privateConstructorUsedError;
  double get valor => throw _privateConstructorUsedError;
  double get valorTotal => throw _privateConstructorUsedError;
  bool get temCortesia => throw _privateConstructorUsedError;
  Desconto? get desconto => throw _privateConstructorUsedError;

  /// Serializes this Periodo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Periodo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeriodoCopyWith<Periodo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodoCopyWith<$Res> {
  factory $PeriodoCopyWith(Periodo value, $Res Function(Periodo) then) =
      _$PeriodoCopyWithImpl<$Res, Periodo>;
  @useResult
  $Res call(
      {String tempoFormatado,
      String tempo,
      double valor,
      double valorTotal,
      bool temCortesia,
      Desconto? desconto});

  $DescontoCopyWith<$Res>? get desconto;
}

/// @nodoc
class _$PeriodoCopyWithImpl<$Res, $Val extends Periodo>
    implements $PeriodoCopyWith<$Res> {
  _$PeriodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Periodo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempoFormatado = null,
    Object? tempo = null,
    Object? valor = null,
    Object? valorTotal = null,
    Object? temCortesia = null,
    Object? desconto = freezed,
  }) {
    return _then(_value.copyWith(
      tempoFormatado: null == tempoFormatado
          ? _value.tempoFormatado
          : tempoFormatado // ignore: cast_nullable_to_non_nullable
              as String,
      tempo: null == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
      valorTotal: null == valorTotal
          ? _value.valorTotal
          : valorTotal // ignore: cast_nullable_to_non_nullable
              as double,
      temCortesia: null == temCortesia
          ? _value.temCortesia
          : temCortesia // ignore: cast_nullable_to_non_nullable
              as bool,
      desconto: freezed == desconto
          ? _value.desconto
          : desconto // ignore: cast_nullable_to_non_nullable
              as Desconto?,
    ) as $Val);
  }

  /// Create a copy of Periodo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DescontoCopyWith<$Res>? get desconto {
    if (_value.desconto == null) {
      return null;
    }

    return $DescontoCopyWith<$Res>(_value.desconto!, (value) {
      return _then(_value.copyWith(desconto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PeriodoImplCopyWith<$Res> implements $PeriodoCopyWith<$Res> {
  factory _$$PeriodoImplCopyWith(
          _$PeriodoImpl value, $Res Function(_$PeriodoImpl) then) =
      __$$PeriodoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tempoFormatado,
      String tempo,
      double valor,
      double valorTotal,
      bool temCortesia,
      Desconto? desconto});

  @override
  $DescontoCopyWith<$Res>? get desconto;
}

/// @nodoc
class __$$PeriodoImplCopyWithImpl<$Res>
    extends _$PeriodoCopyWithImpl<$Res, _$PeriodoImpl>
    implements _$$PeriodoImplCopyWith<$Res> {
  __$$PeriodoImplCopyWithImpl(
      _$PeriodoImpl _value, $Res Function(_$PeriodoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Periodo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempoFormatado = null,
    Object? tempo = null,
    Object? valor = null,
    Object? valorTotal = null,
    Object? temCortesia = null,
    Object? desconto = freezed,
  }) {
    return _then(_$PeriodoImpl(
      tempoFormatado: null == tempoFormatado
          ? _value.tempoFormatado
          : tempoFormatado // ignore: cast_nullable_to_non_nullable
              as String,
      tempo: null == tempo
          ? _value.tempo
          : tempo // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as double,
      valorTotal: null == valorTotal
          ? _value.valorTotal
          : valorTotal // ignore: cast_nullable_to_non_nullable
              as double,
      temCortesia: null == temCortesia
          ? _value.temCortesia
          : temCortesia // ignore: cast_nullable_to_non_nullable
              as bool,
      desconto: freezed == desconto
          ? _value.desconto
          : desconto // ignore: cast_nullable_to_non_nullable
              as Desconto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodoImpl implements _Periodo {
  const _$PeriodoImpl(
      {required this.tempoFormatado,
      required this.tempo,
      required this.valor,
      required this.valorTotal,
      required this.temCortesia,
      required this.desconto});

  factory _$PeriodoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodoImplFromJson(json);

  @override
  final String tempoFormatado;
  @override
  final String tempo;
  @override
  final double valor;
  @override
  final double valorTotal;
  @override
  final bool temCortesia;
  @override
  final Desconto? desconto;

  @override
  String toString() {
    return 'Periodo(tempoFormatado: $tempoFormatado, tempo: $tempo, valor: $valor, valorTotal: $valorTotal, temCortesia: $temCortesia, desconto: $desconto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodoImpl &&
            (identical(other.tempoFormatado, tempoFormatado) ||
                other.tempoFormatado == tempoFormatado) &&
            (identical(other.tempo, tempo) || other.tempo == tempo) &&
            (identical(other.valor, valor) || other.valor == valor) &&
            (identical(other.valorTotal, valorTotal) ||
                other.valorTotal == valorTotal) &&
            (identical(other.temCortesia, temCortesia) ||
                other.temCortesia == temCortesia) &&
            (identical(other.desconto, desconto) ||
                other.desconto == desconto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tempoFormatado, tempo, valor,
      valorTotal, temCortesia, desconto);

  /// Create a copy of Periodo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodoImplCopyWith<_$PeriodoImpl> get copyWith =>
      __$$PeriodoImplCopyWithImpl<_$PeriodoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodoImplToJson(
      this,
    );
  }
}

abstract class _Periodo implements Periodo {
  const factory _Periodo(
      {required final String tempoFormatado,
      required final String tempo,
      required final double valor,
      required final double valorTotal,
      required final bool temCortesia,
      required final Desconto? desconto}) = _$PeriodoImpl;

  factory _Periodo.fromJson(Map<String, dynamic> json) = _$PeriodoImpl.fromJson;

  @override
  String get tempoFormatado;
  @override
  String get tempo;
  @override
  double get valor;
  @override
  double get valorTotal;
  @override
  bool get temCortesia;
  @override
  Desconto? get desconto;

  /// Create a copy of Periodo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeriodoImplCopyWith<_$PeriodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
