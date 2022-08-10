// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_currency_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinDetailedState _$CoinDetailedStateFromJson(Map<String, dynamic> json) =>
    CoinDetailedState(
      status:
          $enumDecodeNullable(_$CoinDetailedStatusEnumMap, json['status']) ??
              CoinDetailedStatus.initial,
      coin: json['coin'] == null
          ? null
          : DetailedCoin.fromJson(json['coin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoinDetailedStateToJson(CoinDetailedState instance) =>
    <String, dynamic>{
      'status': _$CoinDetailedStatusEnumMap[instance.status]!,
      'coin': instance.coin,
    };

const _$CoinDetailedStatusEnumMap = {
  CoinDetailedStatus.initial: 'initial',
  CoinDetailedStatus.loading: 'loading',
  CoinDetailedStatus.success: 'success',
  CoinDetailedStatus.failure: 'failure',
};
