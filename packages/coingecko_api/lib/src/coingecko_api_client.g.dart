// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coingecko_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _CoinGeckoApiClient implements CoinGeckoApiClient {
  _CoinGeckoApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.coingecko.com/api/v3/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Coin>> getAllCoins(currency) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<Coin>>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/coins/markets?vs_currency=${currency}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Coin.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
