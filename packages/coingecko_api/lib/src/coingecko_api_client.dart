import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../coingecko_api.dart';

/// Exception thrown when locationSearch fails.
class CoinRequestFailure implements Exception {}

/// Exception thrown when the provided location is not found.
class CoinNotFoundFailure implements Exception {}


/// {@template meta_weather_api_client}
/// Dart API Client which wraps the [MetaWeather API](https://www.metaweather.com/api/).
/// {@endtemplate}
class CoinGeckoApiClient {
  /// {@macro meta_weather_api_client}
  CoinGeckoApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = 'www.metaweather.com';
  final http.Client _httpClient;

  /// TODO
  Future<List<CryptoCurrency>> getAllCoins() async {
    throw Exception();
  }

  /// Fetches [CryptoCurrency] for a given [coinId].
  /// `/api/v3/coins/?query=(query)`.
  Future<CryptoCurrency> getCoin(String coinId) async {
    final coinRequest = Uri.https(_baseUrl, '/api/v3/coins/$coinId');
    final coinResponse = await _httpClient.get(coinRequest);

    if (coinResponse.statusCode != 200) {
      throw CoinRequestFailure();
    }

    final bodyJson = jsonDecode(coinResponse.body) as Map<String, dynamic>;

    if (bodyJson.isEmpty) {
      throw CoinNotFoundFailure();
    }

    final weatherJson = bodyJson['consolidated_weather'] as List;

    if (weatherJson.isEmpty) {
      throw CoinNotFoundFailure();
    }

    return CryptoCurrency.fromJson(weatherJson.first as Map<String, dynamic>);
  }
}
