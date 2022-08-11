import 'package:coingecko_api/coingecko_api.dart';
import 'package:dio/dio.dart';

import 'utils.dart';

abstract class CoinRemoteDataSource {
  Future<List<Coin>> getAllCoins();
}

class CoinRemoteDataSourceImpl implements CoinRemoteDataSource {
  CoinRemoteDataSourceImpl({
    required this.homeClient,
  });

  CoinGeckoApiClient homeClient;

  @override
  Future<List<Coin>> getAllCoins() async {
    try {
      return await homeClient.getAllCoins('usd');
    } on DioError catch (_) {
      throw ServerException();
    }
  }
}
