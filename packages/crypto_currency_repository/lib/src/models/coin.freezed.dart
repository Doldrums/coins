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

Coin _$CoinFromJson(Map<String, dynamic> json) {
  return _Coin.fromJson(json);
}

/// @nodoc
mixin _$Coin {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get currentPrice => throw _privateConstructorUsedError;
  double get priceChange_24h => throw _privateConstructorUsedError;
  double get priceChangePercentage_24h => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinCopyWith<Coin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinCopyWith<$Res> {
  factory $CoinCopyWith(Coin value, $Res Function(Coin) then) =
      _$CoinCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String symbol,
      String name,
      String image,
      double currentPrice,
      double priceChange_24h,
      double priceChangePercentage_24h,
      DateTime lastUpdated});
}

/// @nodoc
class _$CoinCopyWithImpl<$Res> implements $CoinCopyWith<$Res> {
  _$CoinCopyWithImpl(this._value, this._then);

  final Coin _value;
  // ignore: unused_field
  final $Res Function(Coin) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? currentPrice = freezed,
    Object? priceChange_24h = freezed,
    Object? priceChangePercentage_24h = freezed,
    Object? lastUpdated = freezed,
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
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange_24h: priceChange_24h == freezed
          ? _value.priceChange_24h
          : priceChange_24h // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage_24h: priceChangePercentage_24h == freezed
          ? _value.priceChangePercentage_24h
          : priceChangePercentage_24h // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_CoinCopyWith<$Res> implements $CoinCopyWith<$Res> {
  factory _$$_CoinCopyWith(_$_Coin value, $Res Function(_$_Coin) then) =
      __$$_CoinCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String symbol,
      String name,
      String image,
      double currentPrice,
      double priceChange_24h,
      double priceChangePercentage_24h,
      DateTime lastUpdated});
}

/// @nodoc
class __$$_CoinCopyWithImpl<$Res> extends _$CoinCopyWithImpl<$Res>
    implements _$$_CoinCopyWith<$Res> {
  __$$_CoinCopyWithImpl(_$_Coin _value, $Res Function(_$_Coin) _then)
      : super(_value, (v) => _then(v as _$_Coin));

  @override
  _$_Coin get _value => super._value as _$_Coin;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbol = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? currentPrice = freezed,
    Object? priceChange_24h = freezed,
    Object? priceChangePercentage_24h = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_$_Coin(
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
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange_24h: priceChange_24h == freezed
          ? _value.priceChange_24h
          : priceChange_24h // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage_24h: priceChangePercentage_24h == freezed
          ? _value.priceChangePercentage_24h
          : priceChangePercentage_24h // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coin implements _Coin {
  const _$_Coin(
      {required this.id,
      required this.symbol,
      required this.name,
      required this.image,
      required this.currentPrice,
      required this.priceChange_24h,
      required this.priceChangePercentage_24h,
      required this.lastUpdated});

  factory _$_Coin.fromJson(Map<String, dynamic> json) => _$$_CoinFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;
  @override
  final String image;
  @override
  final double currentPrice;
  @override
  final double priceChange_24h;
  @override
  final double priceChangePercentage_24h;
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'Coin(id: $id, symbol: $symbol, name: $name, image: $image, currentPrice: $currentPrice, priceChange_24h: $priceChange_24h, priceChangePercentage_24h: $priceChangePercentage_24h, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coin &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.currentPrice, currentPrice) &&
            const DeepCollectionEquality()
                .equals(other.priceChange_24h, priceChange_24h) &&
            const DeepCollectionEquality().equals(
                other.priceChangePercentage_24h, priceChangePercentage_24h) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(symbol),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(currentPrice),
      const DeepCollectionEquality().hash(priceChange_24h),
      const DeepCollectionEquality().hash(priceChangePercentage_24h),
      const DeepCollectionEquality().hash(lastUpdated));

  @JsonKey(ignore: true)
  @override
  _$$_CoinCopyWith<_$_Coin> get copyWith =>
      __$$_CoinCopyWithImpl<_$_Coin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinToJson(
      this,
    );
  }
}

abstract class _Coin implements Coin {
  const factory _Coin(
      {required final String id,
      required final String symbol,
      required final String name,
      required final String image,
      required final double currentPrice,
      required final double priceChange_24h,
      required final double priceChangePercentage_24h,
      required final DateTime lastUpdated}) = _$_Coin;

  factory _Coin.fromJson(Map<String, dynamic> json) = _$_Coin.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get name;
  @override
  String get image;
  @override
  double get currentPrice;
  @override
  double get priceChange_24h;
  @override
  double get priceChangePercentage_24h;
  @override
  DateTime get lastUpdated;
  @override
  @JsonKey(ignore: true)
  _$$_CoinCopyWith<_$_Coin> get copyWith => throw _privateConstructorUsedError;
}
