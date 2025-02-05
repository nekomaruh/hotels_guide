// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../domain/entity/data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  int get pagina => throw _privateConstructorUsedError;
  int get qtdPorPagina => throw _privateConstructorUsedError;
  int get totalSuites => throw _privateConstructorUsedError;
  int get totalMoteis => throw _privateConstructorUsedError;
  int get raio => throw _privateConstructorUsedError;
  int get maxPaginas => throw _privateConstructorUsedError;
  List<Motei> get moteis => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {int pagina,
      int qtdPorPagina,
      int totalSuites,
      int totalMoteis,
      int raio,
      int maxPaginas,
      List<Motei> moteis});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagina = null,
    Object? qtdPorPagina = null,
    Object? totalSuites = null,
    Object? totalMoteis = null,
    Object? raio = null,
    Object? maxPaginas = null,
    Object? moteis = null,
  }) {
    return _then(_value.copyWith(
      pagina: null == pagina
          ? _value.pagina
          : pagina // ignore: cast_nullable_to_non_nullable
              as int,
      qtdPorPagina: null == qtdPorPagina
          ? _value.qtdPorPagina
          : qtdPorPagina // ignore: cast_nullable_to_non_nullable
              as int,
      totalSuites: null == totalSuites
          ? _value.totalSuites
          : totalSuites // ignore: cast_nullable_to_non_nullable
              as int,
      totalMoteis: null == totalMoteis
          ? _value.totalMoteis
          : totalMoteis // ignore: cast_nullable_to_non_nullable
              as int,
      raio: null == raio
          ? _value.raio
          : raio // ignore: cast_nullable_to_non_nullable
              as int,
      maxPaginas: null == maxPaginas
          ? _value.maxPaginas
          : maxPaginas // ignore: cast_nullable_to_non_nullable
              as int,
      moteis: null == moteis
          ? _value.moteis
          : moteis // ignore: cast_nullable_to_non_nullable
              as List<Motei>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pagina,
      int qtdPorPagina,
      int totalSuites,
      int totalMoteis,
      int raio,
      int maxPaginas,
      List<Motei> moteis});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pagina = null,
    Object? qtdPorPagina = null,
    Object? totalSuites = null,
    Object? totalMoteis = null,
    Object? raio = null,
    Object? maxPaginas = null,
    Object? moteis = null,
  }) {
    return _then(_$DataImpl(
      pagina: null == pagina
          ? _value.pagina
          : pagina // ignore: cast_nullable_to_non_nullable
              as int,
      qtdPorPagina: null == qtdPorPagina
          ? _value.qtdPorPagina
          : qtdPorPagina // ignore: cast_nullable_to_non_nullable
              as int,
      totalSuites: null == totalSuites
          ? _value.totalSuites
          : totalSuites // ignore: cast_nullable_to_non_nullable
              as int,
      totalMoteis: null == totalMoteis
          ? _value.totalMoteis
          : totalMoteis // ignore: cast_nullable_to_non_nullable
              as int,
      raio: null == raio
          ? _value.raio
          : raio // ignore: cast_nullable_to_non_nullable
              as int,
      maxPaginas: null == maxPaginas
          ? _value.maxPaginas
          : maxPaginas // ignore: cast_nullable_to_non_nullable
              as int,
      moteis: null == moteis
          ? _value._moteis
          : moteis // ignore: cast_nullable_to_non_nullable
              as List<Motei>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {required this.pagina,
      required this.qtdPorPagina,
      required this.totalSuites,
      required this.totalMoteis,
      required this.raio,
      required this.maxPaginas,
      required final List<Motei> moteis})
      : _moteis = moteis;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final int pagina;
  @override
  final int qtdPorPagina;
  @override
  final int totalSuites;
  @override
  final int totalMoteis;
  @override
  final int raio;
  @override
  final int maxPaginas;
  final List<Motei> _moteis;
  @override
  List<Motei> get moteis {
    if (_moteis is EqualUnmodifiableListView) return _moteis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moteis);
  }

  @override
  String toString() {
    return 'Data(pagina: $pagina, qtdPorPagina: $qtdPorPagina, totalSuites: $totalSuites, totalMoteis: $totalMoteis, raio: $raio, maxPaginas: $maxPaginas, moteis: $moteis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.pagina, pagina) || other.pagina == pagina) &&
            (identical(other.qtdPorPagina, qtdPorPagina) ||
                other.qtdPorPagina == qtdPorPagina) &&
            (identical(other.totalSuites, totalSuites) ||
                other.totalSuites == totalSuites) &&
            (identical(other.totalMoteis, totalMoteis) ||
                other.totalMoteis == totalMoteis) &&
            (identical(other.raio, raio) || other.raio == raio) &&
            (identical(other.maxPaginas, maxPaginas) ||
                other.maxPaginas == maxPaginas) &&
            const DeepCollectionEquality().equals(other._moteis, _moteis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pagina,
      qtdPorPagina,
      totalSuites,
      totalMoteis,
      raio,
      maxPaginas,
      const DeepCollectionEquality().hash(_moteis));

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final int pagina,
      required final int qtdPorPagina,
      required final int totalSuites,
      required final int totalMoteis,
      required final int raio,
      required final int maxPaginas,
      required final List<Motei> moteis}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  int get pagina;
  @override
  int get qtdPorPagina;
  @override
  int get totalSuites;
  @override
  int get totalMoteis;
  @override
  int get raio;
  @override
  int get maxPaginas;
  @override
  List<Motei> get moteis;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
