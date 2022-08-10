import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../coingecko_api.dart';

/// Exception thrown when request fails.
class CoinRequestFailure implements Exception {}

/// Exception thrown when the provided coin is not found.
class CoinNotFoundFailure implements Exception {}

/// {@template сoingecko_api_client}
/// Dart API Client which wraps the [Сoingecko API](https://api.coingecko.com/api/).
/// {@endtemplate}
class CoinGeckoApiClient {
  /// {@macro сoingecko_api_client}
  CoinGeckoApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = 'api.coingecko.com';
  final http.Client _httpClient;

  /// TODO: переписать на дио
  Future<List<Coin>> getAllCoins() async {
    final request = Uri.https(_baseUrl, '/api/v3/coins/markets', {'vs_currency':'usd'});
    final response = await _httpClient.get(request);
    if (response.statusCode != 200) {
      throw CoinRequestFailure();
    }
    Iterable list = json.decode(response.body);
    List<Coin> result = <Coin>[];
    list.forEach((element) {
      result.add(Coin.fromJson(element));
    });
    return result;
  }

  /// Fetches [CryptoCurrency] for a given [coinId].
  /// `/api/v3/coins/?query=(query)`.
  Future<Coin> getCoinDetailed(String coinId) async {
    final coinRequest = Uri.https(_baseUrl, '/api/v3/coins/$coinId');
    final coinResponse = await _httpClient.get(coinRequest);

    if (coinResponse.statusCode != 200) {
      throw CoinRequestFailure();
    }

    final bodyJson = jsonDecode(coinResponse.body) as Map<String, dynamic>;

    if (bodyJson.isEmpty) {
      throw CoinNotFoundFailure();
    }

    return Coin.fromJson(bodyJson);
  }
}
