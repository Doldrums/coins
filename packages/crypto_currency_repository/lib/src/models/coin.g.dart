// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Coin _$$_CoinFromJson(Map<String, dynamic> json) => _$_Coin(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      currentPrice: (json['currentPrice'] as num).toDouble(),
      priceChange_24h: (json['priceChange_24h'] as num).toDouble(),
      priceChangePercentage_24h:
          (json['priceChangePercentage_24h'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$_CoinToJson(_$_Coin instance) => <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'currentPrice': instance.currentPrice,
      'priceChange_24h': instance.priceChange_24h,
      'priceChangePercentage_24h': instance.priceChangePercentage_24h,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };
