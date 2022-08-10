import 'package:crypto_currency_repository/crypto_currency_repository.dart'
    as crypto_currency_repository;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin.freezed.dart';

part 'coin.g.dart';

@freezed
class DetailedCoin with _$DetailedCoin {
  const factory DetailedCoin({
    required String id,
    required String symbol,
    required String name,
  }) = _DetailedCoin;

  factory DetailedCoin.fromJson(Map<String, Object?> json) => _$DetailedCoinFromJson(json);

  factory DetailedCoin.fromRepository(
    crypto_currency_repository.Coin cryptoCurrency,
  ) =>
      DetailedCoin(
        id: cryptoCurrency.id,
        symbol: cryptoCurrency.symbol,
        name: cryptoCurrency.name,
      );

  static const empty = DetailedCoin(
    id: '',
    symbol: '',
    name: '',
  );
}
