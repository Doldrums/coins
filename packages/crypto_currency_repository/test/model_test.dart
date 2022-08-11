import 'package:crypto_currency_repository/crypto_currency_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Coin', () {
    group('fromJson', () {
      test('fromJson to Coin model', () {
        expect(
          Coin.fromJson(<String, dynamic>{
            "id": "bitcoin",
            "symbol": "btc",
            "name": "Bitcoin",
            "image":
                "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
            "current_price": 23212,
            "currentPrice": -604.1242721430899,
            "priceChange_24h": -604.1242721430899,
            "priceChangePercentage_24h": -2.53666,
            "lastUpdated": "2022-08-09T23:01:41.884Z"
          }),
          isA<Coin>(),
        );
      });
    });
  });
}
