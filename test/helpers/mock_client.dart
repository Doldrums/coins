import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

class MockClient extends Mock implements http.Client {}

Uri postsUrl() => Uri.https(
      'api.coingecko.com',
      '/api/v3/coins/markets',
      <String, String>{'vs_currency': 'usd'},
    );
