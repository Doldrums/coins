import 'package:crypto_currency_repository/crypto_currency_repository.dart'
    show CryptoCurrencyRepository;
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:json_annotation/json_annotation.dart';

import '../coin.dart';

part 'crypto_currency_cubit.g.dart';
part 'crypto_currency_state.dart';

class CoinDetailedCubit extends HydratedCubit<CoinDetailedState> {
  CoinDetailedCubit(this._cryptoCurrencyRepository) : super(const CoinDetailedState());

  final CryptoCurrencyRepository _cryptoCurrencyRepository;

  Future<void> fetchCoin(String? id) async {
    if (id == null || id.isEmpty) return;

    emit(state.copyWith(status: CoinDetailedStatus.loading));

    try {
      final coin = DetailedCoin.fromRepository(
        await _cryptoCurrencyRepository.getCoinDetailed(id),
      );
      emit(
        state.copyWith(
          status: CoinDetailedStatus.success,
          coin: coin,
        ),
      );
    } on Exception {
      emit(state.copyWith(status: CoinDetailedStatus.failure));
    }
  }

  // TODO
  Future<void> refreshCoin() async {
    // if (!state.status.isSuccess) return;
    // if (state.weather == Weather.empty) return;
    // try {
    //   final weather = Weather.fromRepository(
    //     await _cryptoCurrencyRepository.getWeather(state.weather.location),
    //   );
    //   final units = state.temperatureUnits;
    //   final value = units.isFahrenheit
    //       ? weather.temperature.value.toFahrenheit()
    //       : weather.temperature.value;
    //
    //   emit(
    //     state.copyWith(
    //       status: WeatherStatus.success,
    //       temperatureUnits: units,
    //       weather: weather.copyWith(temperature: Temperature(value: value)),
    //     ),
    //   );
    // } on Exception {
    //   emit(state);
    // }
    throw UnimplementedError();
  }

  @override
  CoinDetailedState fromJson(Map<String, dynamic> json) =>
      CoinDetailedState.fromJson(json);

  @override
  Map<String, dynamic> toJson(CoinDetailedState state) => state.toJson();
}
