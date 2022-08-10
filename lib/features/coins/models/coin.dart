import 'package:equatable/equatable.dart';

class Coin extends Equatable {
  const Coin({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.priceChange_24h,
    required this.priceChangePercentage_24h,
    required this.lastUpdated,
  });

  final String id;
  final String symbol;
  final String name;
  final String image;
  final double currentPrice;
  final double priceChange_24h;
  final double priceChangePercentage_24h;
  final DateTime lastUpdated;

  @override
  List<Object> get props => [id, symbol, name];
}
