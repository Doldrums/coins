import 'package:coingecko_api/coingecko_api.dart';
import 'package:mocktail/mocktail.dart';

class ServerException implements Exception {}

class MockCoinGeckoClient extends Mock implements CoinGeckoApiClient {}
