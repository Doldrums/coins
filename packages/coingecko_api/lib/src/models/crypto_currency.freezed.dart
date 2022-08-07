// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto_currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CryptoCurrency _$CryptoCurrencyFromJson(Map<String, dynamic> json) {
  return _CryptoCurrency.fromJson(json);
}

/// @nodoc
mixin _$CryptoCurrency {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoCurrencyCopyWith<CryptoCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoCurrencyCopyWith<$Res> {
  factory $CryptoCurrencyCopyWith(
          CryptoCurrency value, $Res Function(CryptoCurrency) then) =
      _$CryptoCurrencyCopyWithImpl<$Res>;
  $Res call({String id, String symbol, String name});
}

/// @nodoc
class _$CryptoCurrencyCopyWithImpl<$Res>
    implements $CryptoCurrencyCopyWith<$Res> {
  _$CryptoCurrencyCopyWithImpl(this._value, this._then);

  final CryptoCurrency _value;
  // ignore: unused_field
  final $Res Function(CryptoCurrency) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CryptoCurrencyCopyWith<$Res>
    implements $CryptoCurrencyCopyWith<$Res> {
  factory _$$_CryptoCurrencyCopyWith(
          _$_CryptoCurrency value, $Res Function(_$_CryptoCurrency) then) =
      __$$_CryptoCurrencyCopyWithImpl<$Res>;
  @override
  $Res call({String id, String symbol, String name});
}

/// @nodoc
class __$$_CryptoCurrencyCopyWithImpl<$Res>
    extends _$CryptoCurrencyCopyWithImpl<$Res>
    implements _$$_CryptoCurrencyCopyWith<$Res> {
  __$$_CryptoCurrencyCopyWithImpl(
      _$_CryptoCurrency _value, $Res Function(_$_CryptoCurrency) _then)
      : super(_value, (v) => _then(v as _$_CryptoCurrency));

  @override
  _$_CryptoCurrency get _value => super._value as _$_CryptoCurrency;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CryptoCurrency(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CryptoCurrency implements _CryptoCurrency {
  const _$_CryptoCurrency(
      {required this.id, required this.symbol, required this.name});

  factory _$_CryptoCurrency.fromJson(Map<String, dynamic> json) =>
      _$$_CryptoCurrencyFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;

  @override
  String toString() {
    return 'CryptoCurrency(id: $id, symbol: $symbol, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptoCurrency &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(symbol),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_CryptoCurrencyCopyWith<_$_CryptoCurrency> get copyWith =>
      __$$_CryptoCurrencyCopyWithImpl<_$_CryptoCurrency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptoCurrencyToJson(
      this,
    );
  }
}

abstract class _CryptoCurrency implements CryptoCurrency {
  const factory _CryptoCurrency(
      {required final String id,
      required final String symbol,
      required final String name}) = _$_CryptoCurrency;

  factory _CryptoCurrency.fromJson(Map<String, dynamic> json) =
      _$_CryptoCurrency.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CryptoCurrencyCopyWith<_$_CryptoCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}
