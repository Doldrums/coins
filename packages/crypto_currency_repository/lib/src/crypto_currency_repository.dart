import 'dart:async';

import 'package:coingecko_api/coingecko_api.dart';

class CryptoCurrencyFailure implements Exception {}

class CryptoCurrencyRepository {
  CryptoCurrencyRepository({CoinGeckoApiClient? weatherApiClient})
      : _weatherApiClient = weatherApiClient ?? CoinGeckoApiClient();

  final CoinGeckoApiClient _weatherApiClient;

  Future<CryptoCurrency> getCoin(String coinId) async {
    final coinData = await _weatherApiClient.getCoin(coinId);
    return CryptoCurrency(
      id: coinData.id,
      symbol: coinData.symbol,
      name: coinData.name,
    );
  }
}
