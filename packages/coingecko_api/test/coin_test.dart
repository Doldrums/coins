import 'package:coingecko_api/coingecko_api.dart';
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
            "market_cap": 443881243005,
            "market_cap_rank": 1,
            "fully_diluted_valuation": 487598997629,
            "total_volume": 29649069729,
            "high_24h": 23938,
            "low_24h": 22961,
            "price_change_24h": -604.1242721430899,
            "price_change_percentage_24h": -2.53666,
            "market_cap_change_24h": -10972572616.94513,
            "market_cap_change_percentage_24h": -2.41233,
            "circulating_supply": 19117156.0,
            "total_supply": 21000000.0,
            "max_supply": 21000000.0,
            "ath": 69045,
            "ath_change_percentage": -66.38809,
            "ath_date": "2021-11-10T14:24:11.849Z",
            "atl": 67.81,
            "atl_change_percentage": 34124.46402,
            "atl_date": "2013-07-06T00:00:00.000Z",
            "roi": null,
            "last_updated": "2022-08-09T23:01:41.884Z"
          }),
          isA<Coin>(),
        );
      });
    });
  });
}
