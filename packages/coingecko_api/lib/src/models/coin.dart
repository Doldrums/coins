import 'package:freezed_annotation/freezed_annotation.dart';


part 'coin.freezed.dart';
part 'coin.g.dart';

@freezed
class Coin with _$Coin {
  const factory Coin({
    required String? id,
    required String? symbol,
    required String? name,
    required String image,
    @JsonKey(name: 'current_price')
    required double? currentPrice,
    @JsonKey(name: 'market_cap')
    required double? marketCap,
    @JsonKey(name: 'market_cap_rank')
    required double? marketCapRank,
    @JsonKey(name: 'fully_diluted_valuation')
    required double? fullyDilutedValuation,
    @JsonKey(name: 'total_volume')
    required double? totalVolume,
    @JsonKey(name: 'high_24h')
    required double? high_24h,
    @JsonKey(name: 'low_24h')
    required double? low_24h,
    @JsonKey(name: 'price_change_24h')
    required double? priceChange_24h,
    @JsonKey(name: 'price_change_percentage_24h')
    required double? priceChangePercentage_24h,
    @JsonKey(name: 'market_cap_change_24h')
    required double? marketCapChange_24h,
    @JsonKey(name: 'market_cap_change_percentage_24h')
    required double? marketCapChangePercentage_24h,
    @JsonKey(name: 'circulating_supply')
    required double? circulatingSupply,
    @JsonKey(name: 'total_supply')
    required double? totalSupply,
    @JsonKey(name: 'max_supply')
    required double? maxSupply,
    required double? ath,
    @JsonKey(name: 'ath_change_percentage')
    required double? athChangePercentage,
    @JsonKey(name: 'ath_date')
    required DateTime athDate,
    required double? atl,
    @JsonKey(name: 'atl_change_percentage')
    required double? atlChangePercentage,
    @JsonKey(name: 'atl_date')
    required DateTime atlDate,
    required Roi? roi,
    @JsonKey(name: 'last_updated')
    required DateTime lastUpdated,

  }) = _Coin;

  factory Coin.fromJson(Map<String, Object?> json)
  => _$CoinFromJson(json);

}

@freezed
class Roi with _$Roi {
  const factory Roi({
    required double? times,
    required String? currency,
    required double? percentage,
  }) = _CoinDetailed;

  factory Roi.fromJson(Map<String, Object?> json) =>
      _$RoiFromJson(json);
}


