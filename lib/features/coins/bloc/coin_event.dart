part of 'coin_bloc.dart';

abstract class CoinEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class CoinsFetched extends CoinEvent {}

