import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../coingecko_api.dart';

part 'coingecko_api_client.g.dart';
/// {@template сoingecko_api_client}
/// Dart API Client which wraps the [Сoingecko API](https://api.coingecko.com/api/).
/// {@endtemplate}
///
@RestApi(baseUrl: "https://api.coingecko.com/api/v3/")
abstract class CoinGeckoApiClient {
  factory CoinGeckoApiClient(Dio dio, {String baseUrl}) = _CoinGeckoApiClient;

  @GET("/coins/markets?vs_currency={currency}")
  Future<List<Coin>> getAllCoins(@Path("currency") String currency);
}