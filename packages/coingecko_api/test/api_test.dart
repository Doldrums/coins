import 'package:coingecko_api/coingecko_api.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'helpers/data_source.dart';
import 'helpers/utils.dart';

void main() {
  late CoinRemoteDataSourceImpl dataSource;

  final List<Coin> mockCoins = [];

  late MockCoinGeckoClient homeClient;

  setUp(() async {
    registerFallbackValue(Uri());
    homeClient = MockCoinGeckoClient();
    dataSource = CoinRemoteDataSourceImpl(homeClient: homeClient);
  });

  group('get coins', () {
    test(
      'GET request on /coins.',
      () async {
        when(
          () => homeClient.getAllCoins('usd'),
        ).thenAnswer(
          (_) async => mockCoins,
        );
        dataSource.getAllCoins();
        verify(() => homeClient.getAllCoins('usd'));
        verifyNoMoreInteractions(homeClient);
      },
    );

    test(
      'Response body is valid.',
      () async {
        when(
          () => homeClient.getAllCoins('usd'),
        ).thenAnswer(
          (_) async => mockCoins,
        );
        final response = await dataSource.getAllCoins();
        expect(response, mockCoins);
      },
    );

    test(
      'Throw ServerException when the response code is 404.',
      () async {
        // arrange
        when(() => homeClient.getAllCoins('usd')).thenThrow(
          DioError(
            response: Response(
              data: 'Something went wrong',
              statusCode: 404,
              requestOptions: RequestOptions(path: ''),
            ),
            requestOptions: RequestOptions(path: ''),
          ),
        );
        final call = dataSource.getAllCoins;
        expect(
          () => call(),
          throwsA(const TypeMatcher<ServerException>()),
        );
      },
    );
  });
}
