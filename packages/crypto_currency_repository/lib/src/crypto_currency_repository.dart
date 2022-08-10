import 'dart:async';

import 'package:coingecko_api/coingecko_api.dart' hide Coin;

import '../crypto_currency_repository.dart';

class CryptoCurrencyFailure implements Exception {}

class CryptoCurrencyRepository {
  CryptoCurrencyRepository({CoinGeckoApiClient? weatherApiClient})
      : _weatherApiClient = weatherApiClient ?? CoinGeckoApiClient();

  final CoinGeckoApiClient _weatherApiClient;

  Future<Coin> getCoinDetailed(String coinId) async {
    final coinData = await _weatherApiClient.getCoinDetailed(coinId);
    return Coin(
      id: coinData.id!,
      symbol: coinData.symbol!,
      name: coinData.name!,
      currentPrice: coinData.currentPrice!,
      priceChangePercentage_24h: coinData.priceChangePercentage_24h!,
      priceChange_24h: coinData.priceChange_24h!,
      lastUpdated: coinData.lastUpdated,
      image: coinData.image,
    );
  }

  Future<List<Coin>> getCoins() async {
    final coinData = await _weatherApiClient.getAllCoins();
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
