// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailedCoin _$DetailedCoinFromJson(Map<String, dynamic> json) {
  return _DetailedCoin.fromJson(json);
}

/// @nodoc
mixin _$DetailedCoin {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailedCoinCopyWith<DetailedCoin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedCoinCopyWith<$Res> {
  factory $DetailedCoinCopyWith(
          DetailedCoin value, $Res Function(DetailedCoin) then) =
      _$DetailedCoinCopyWithImpl<$Res>;
  $Res call({String id, String symbol, String name});
}

/// @nodoc
class _$DetailedCoinCopyWithImpl<$Res> implements $DetailedCoinCopyWith<$Res> {
  _$DetailedCoinCopyWithImpl(this._value, this._then);

  final DetailedCoin _value;
  // ignore: unused_field
  final $Res Function(DetailedCoin) _then;

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
abstract class _$$_DetailedCoinCopyWith<$Res>
    implements $DetailedCoinCopyWith<$Res> {
  factory _$$_DetailedCoinCopyWith(
          _$_DetailedCoin value, $Res Function(_$_DetailedCoin) then) =
      __$$_DetailedCoinCopyWithImpl<$Res>;
  @override
  $Res call({String id, String symbol, String name});
}

/// @nodoc
class __$$_DetailedCoinCopyWithImpl<$Res>
    extends _$DetailedCoinCopyWithImpl<$Res>
    implements _$$_DetailedCoinCopyWith<$Res> {
  __$$_DetailedCoinCopyWithImpl(
      _$_DetailedCoin _value, $Res Function(_$_DetailedCoin) _then)
      : super(_value, (v) => _then(v as _$_DetailedCoin));

  @override
  _$_DetailedCoin get _value => super._value as _$_DetailedCoin;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_DetailedCoin(
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
class _$_DetailedCoin implements _DetailedCoin {
  const _$_DetailedCoin(
      {required this.id, required this.symbol, required this.name});

  factory _$_DetailedCoin.fromJson(Map<String, dynamic> json) =>
      _$$_DetailedCoinFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;

  @override
  String toString() {
    return 'DetailedCoin(id: $id, symbol: $symbol, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailedCoin &&
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
  _$$_DetailedCoinCopyWith<_$_DetailedCoin> get copyWith =>
      __$$_DetailedCoinCopyWithImpl<_$_DetailedCoin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailedCoinToJson(
      this,
    );
  }
}

abstract class _DetailedCoin implements DetailedCoin {
  const factory _DetailedCoin(
      {required final String id,
      required final String symbol,
      required final String name}) = _$_DetailedCoin;

  factory _DetailedCoin.fromJson(Map<String, dynamic> json) =
      _$_DetailedCoin.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DetailedCoinCopyWith<_$_DetailedCoin> get copyWith =>
      throw _privateConstructorUsedError;
}
