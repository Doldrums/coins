// ignore_for_file: prefer_const_constructors
import 'package:coingecko_api/coingecko_api.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  group('ApiClient', () {
    late http.Client httpClient;
    late CoinGeckoApiClient coinGeckoApiClient;

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      httpClient = MockHttpClient();
      coinGeckoApiClient = CoinGeckoApiClient(httpClient: httpClient);
    });

    group('constructor', () {
      test('does not require an httpClient', () {
        expect(CoinGeckoApiClient(), isNotNull);
      });
    });

    group('getAllCoins', () {
      test('makes correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('[]');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        try {
          await coinGeckoApiClient.getAllCoins();
        } catch (_) {}
        verify(
          () => httpClient.get(
            Uri.https(
              'api.coingecko.com',
              '/api/v3/coins/list',
            ),
          ),
        ).called(1);
      });

      test('throws LocationIdRequestFailure on non-200 response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(400);
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        expect(
          () async => coinGeckoApiClient.getAllCoins(),
          throwsA(isA<CoinRequestFailure>()),
        );
      });

      test('returns list of Coins on valid response', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn(
          '''
          [{"id":"01coin","symbol":"zoc","name":"01coin"},
          {"id":"0-5x-long-algorand-token","symbol":"algohalf","name":"0.5X Long Algorand"},
          {"id":"0-5x-long-altcoin-index-token","symbol":"althalf","name":"0.5X Long Altcoin Index"},
          {"id":"0-5x-long-ascendex-token-token","symbol":"asdhalf","name":"0.5X Long AscendEx"},
          {"id":"0-5x-long-bitcoin-cash-token","symbol":"bchhalf","name":"0.5X Long Bitcoin Cash"},
          {"id":"0-5x-long-bitcoin-token","symbol":"half","name":"0.5X Long Bitcoin"},
          {"id":"0-5x-long-cardano-token","symbol":"adahalf","name":"0.5X Long Cardano"},
          {"id":"0-5x-long-chainlink-token","symbol":"linkhalf","name":"0.5X Long Chainlink"},
          {"id":"0-5x-long-cosmos-token","symbol":"atomhalf","name":"0.5X Long Cosmos"},
          {"id":"0-5x-long-dogecoin-token","symbol":"dogehalf","name":"0.5X Long Dogecoin"},
          {"id":"0-5x-long-eos-token","symbol":"eoshalf","name":"0.5X Long EOS"},
          {"id":"0-5x-long-ethereum-classic-token","symbol":"etchalf","name":"0.5X Long Ethereum Classic"},
          {"id":"0-5x-long-ethereum-token","symbol":"ethhalf","name":"0.5X Long Ethereum"},
          {"id":"0-5x-long-kyber-network-token","symbol":"knchalf","name":"0.5X Long Kyber Network"},
          {"id":"0-5x-long-matic-token","symbol":"matichalf","name":"0.5X Long Matic Token"},
          {"id":"0-5x-long-privacy-index-token","symbol":"privhalf","name":"0.5X Long Privacy Index"},
          {"id":"0-5x-long-swipe-token","symbol":"sxphalf","name":"0.5X Long Swipe"},
          {"id":"0-5x-long-theta-network-token","symbol":"thetahalf","name":"0.5X Long Theta Network"},
          {"id":"0-5x-long-xrp-token","symbol":"xrphalf","name":"0.5X Long XRP Token"},
          {"id":"0cash","symbol":"zch","name":"0cash"},{"id":"0chain","symbol":"zcn","name":"0chain"}
          ]''',
        );
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        final actual = await coinGeckoApiClient.getAllCoins();
        expect(
          actual,
          isA<List<Coin>>(),
        );
      });
    });
  });
}
