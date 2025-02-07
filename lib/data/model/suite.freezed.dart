// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../domain/entity/suite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Suite _$SuiteFromJson(Map<String, dynamic> json) {
  return _Suite.fromJson(json);
}

/// @nodoc
mixin _$Suite {
  String get nome => throw _privateConstructorUsedError;
  int get qtd => throw _privateConstructorUsedError;
  bool get exibirQtdDisponiveis => throw _privateConstructorUsedError;
  List<String> get fotos => throw _privateConstructorUsedError;
  List<Iten> get itens => throw _privateConstructorUsedError;
  List<CategoriaIten> get categoriaItens => throw _privateConstructorUsedError;
  List<Periodo> get periodos => throw _privateConstructorUsedError;

  /// Serializes this Suite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Suite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuiteCopyWith<Suite> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuiteCopyWith<$Res> {
  factory $SuiteCopyWith(Suite value, $Res Function(Suite) then) =
      _$SuiteCopyWithImpl<$Res, Suite>;
  @useResult
  $Res call(
      {String nome,
      int qtd,
      bool exibirQtdDisponiveis,
      List<String> fotos,
      List<Iten> itens,
      List<CategoriaIten> categoriaItens,
      List<Periodo> periodos});
}

/// @nodoc
class _$SuiteCopyWithImpl<$Res, $Val extends Suite>
    implements $SuiteCopyWith<$Res> {
  _$SuiteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Suite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nome = null,
    Object? qtd = null,
    Object? exibirQtdDisponiveis = null,
    Object? fotos = null,
    Object? itens = null,
    Object? categoriaItens = null,
    Object? periodos = null,
  }) {
    return _then(_value.copyWith(
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      qtd: null == qtd
          ? _value.qtd
          : qtd // ignore: cast_nullable_to_non_nullable
              as int,
      exibirQtdDisponiveis: null == exibirQtdDisponiveis
          ? _value.exibirQtdDisponiveis
          : exibirQtdDisponiveis // ignore: cast_nullable_to_non_nullable
              as bool,
      fotos: null == fotos
          ? _value.fotos
          : fotos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itens: null == itens
          ? _value.itens
          : itens // ignore: cast_nullable_to_non_nullable
              as List<Iten>,
      categoriaItens: null == categoriaItens
          ? _value.categoriaItens
          : categoriaItens // ignore: cast_nullable_to_non_nullable
              as List<CategoriaIten>,
      periodos: null == periodos
          ? _value.periodos
          : periodos // ignore: cast_nullable_to_non_nullable
              as List<Periodo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuiteImplCopyWith<$Res> implements $SuiteCopyWith<$Res> {
  factory _$$SuiteImplCopyWith(
          _$SuiteImpl value, $Res Function(_$SuiteImpl) then) =
      __$$SuiteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nome,
      int qtd,
      bool exibirQtdDisponiveis,
      List<String> fotos,
      List<Iten> itens,
      List<CategoriaIten> categoriaItens,
      List<Periodo> periodos});
}

/// @nodoc
class __$$SuiteImplCopyWithImpl<$Res>
    extends _$SuiteCopyWithImpl<$Res, _$SuiteImpl>
    implements _$$SuiteImplCopyWith<$Res> {
  __$$SuiteImplCopyWithImpl(
      _$SuiteImpl _value, $Res Function(_$SuiteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Suite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nome = null,
    Object? qtd = null,
    Object? exibirQtdDisponiveis = null,
    Object? fotos = null,
    Object? itens = null,
    Object? categoriaItens = null,
    Object? periodos = null,
  }) {
    return _then(_$SuiteImpl(
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      qtd: null == qtd
          ? _value.qtd
          : qtd // ignore: cast_nullable_to_non_nullable
              as int,
      exibirQtdDisponiveis: null == exibirQtdDisponiveis
          ? _value.exibirQtdDisponiveis
          : exibirQtdDisponiveis // ignore: cast_nullable_to_non_nullable
              as bool,
      fotos: null == fotos
          ? _value._fotos
          : fotos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itens: null == itens
          ? _value._itens
          : itens // ignore: cast_nullable_to_non_nullable
              as List<Iten>,
      categoriaItens: null == categoriaItens
          ? _value._categoriaItens
          : categoriaItens // ignore: cast_nullable_to_non_nullable
              as List<CategoriaIten>,
      periodos: null == periodos
          ? _value._periodos
          : periodos // ignore: cast_nullable_to_non_nullable
              as List<Periodo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuiteImpl implements _Suite {
  const _$SuiteImpl(
      {required this.nome,
      required this.qtd,
      required this.exibirQtdDisponiveis,
      required final List<String> fotos,
      required final List<Iten> itens,
      required final List<CategoriaIten> categoriaItens,
      required final List<Periodo> periodos})
      : _fotos = fotos,
        _itens = itens,
        _categoriaItens = categoriaItens,
        _periodos = periodos;

  factory _$SuiteImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuiteImplFromJson(json);

  @override
  final String nome;
  @override
  final int qtd;
  @override
  final bool exibirQtdDisponiveis;
  final List<String> _fotos;
  @override
  List<String> get fotos {
    if (_fotos is EqualUnmodifiableListView) return _fotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fotos);
  }

  final List<Iten> _itens;
  @override
  List<Iten> get itens {
    if (_itens is EqualUnmodifiableListView) return _itens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itens);
  }

  final List<CategoriaIten> _categoriaItens;
  @override
  List<CategoriaIten> get categoriaItens {
    if (_categoriaItens is EqualUnmodifiableListView) return _categoriaItens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoriaItens);
  }

  final List<Periodo> _periodos;
  @override
  List<Periodo> get periodos {
    if (_periodos is EqualUnmodifiableListView) return _periodos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_periodos);
  }

  @override
  String toString() {
    return 'Suite(nome: $nome, qtd: $qtd, exibirQtdDisponiveis: $exibirQtdDisponiveis, fotos: $fotos, itens: $itens, categoriaItens: $categoriaItens, periodos: $periodos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuiteImpl &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.qtd, qtd) || other.qtd == qtd) &&
            (identical(other.exibirQtdDisponiveis, exibirQtdDisponiveis) ||
                other.exibirQtdDisponiveis == exibirQtdDisponiveis) &&
            const DeepCollectionEquality().equals(other._fotos, _fotos) &&
            const DeepCollectionEquality().equals(other._itens, _itens) &&
            const DeepCollectionEquality()
                .equals(other._categoriaItens, _categoriaItens) &&
            const DeepCollectionEquality().equals(other._periodos, _periodos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nome,
      qtd,
      exibirQtdDisponiveis,
      const DeepCollectionEquality().hash(_fotos),
      const DeepCollectionEquality().hash(_itens),
      const DeepCollectionEquality().hash(_categoriaItens),
      const DeepCollectionEquality().hash(_periodos));

  /// Create a copy of Suite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuiteImplCopyWith<_$SuiteImpl> get copyWith =>
      __$$SuiteImplCopyWithImpl<_$SuiteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuiteImplToJson(
      this,
    );
  }
}

abstract class _Suite implements Suite {
  const factory _Suite(
      {required final String nome,
      required final int qtd,
      required final bool exibirQtdDisponiveis,
      required final List<String> fotos,
      required final List<Iten> itens,
      required final List<CategoriaIten> categoriaItens,
      required final List<Periodo> periodos}) = _$SuiteImpl;

  factory _Suite.fromJson(Map<String, dynamic> json) = _$SuiteImpl.fromJson;

  @override
  String get nome;
  @override
  int get qtd;
  @override
  bool get exibirQtdDisponiveis;
  @override
  List<String> get fotos;
  @override
  List<Iten> get itens;
  @override
  List<CategoriaIten> get categoriaItens;
  @override
  List<Periodo> get periodos;

  /// Create a copy of Suite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuiteImplCopyWith<_$SuiteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
