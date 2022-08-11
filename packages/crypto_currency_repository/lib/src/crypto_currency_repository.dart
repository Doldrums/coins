import 'dart:async';

import 'package:coingecko_api/coingecko_api.dart' hide Coin;
import 'package:dio/dio.dart';

import '../crypto_currency_repository.dart';

class CryptoCurrencyFailure implements Exception {}

class CryptoCurrencyRepository {
  CryptoCurrencyRepository({CoinGeckoApiClient? weatherApiClient})
      : _cryptoCurrencyApiClient = weatherApiClient ?? CoinGeckoApiClient(Dio());

  final CoinGeckoApiClient _cryptoCurrencyApiClient;

  Future<List<Coin>> getCoins() async {
    final coinData = await _cryptoCurrencyApiClient.getAllCoins('usd');
    final result = <Coin>[];
    coinData.forEach((element) {
      result.add(Coin(
        id: element.id!,
        symbol: element.symbol!,
        name: element.name!,
        currentPrice: element.currentPrice!,
        priceChangePercentage_24h: element.priceChangePercentage_24h!,
        priceChange_24h: element.priceChange_24h!,
        lastUpdated: element.lastUpdated,
        image: element.image,
      ));
    });
    return result;
  }
}
