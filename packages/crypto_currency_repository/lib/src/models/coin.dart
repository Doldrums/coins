import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin.freezed.dart';
part 'coin.g.dart';

@freezed
class Coin with _$Coin {
  const factory Coin({
    required String id,
    required String symbol,
    required String name,
    required String image,
    required double currentPrice,
    required double priceChange_24h,
    required double priceChangePercentage_24h,
    required DateTime lastUpdated,
  }) = _Coin;

  factory Coin.fromJson(Map<String, Object?> json) => _$CoinFromJson(json);
}
