import 'package:crypto_currency_repository/crypto_currency_repository.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/app_theme.dart';
import 'features/coins/home.dart';
import 'features/theme/cubit/theme_cubit.dart';

class CryptoApp extends StatelessWidget {
  const CryptoApp({
    super.key,
    required CryptoCurrencyRepository cryptoCurrencyRepository,
  }) : _cryptoCurrencyRepository = cryptoCurrencyRepository;

  final CryptoCurrencyRepository _cryptoCurrencyRepository;

  @override
  Widget build(BuildContext context) => RepositoryProvider.value(
        value: _cryptoCurrencyRepository,
        child: BlocProvider(
          create: (_) => ThemeCubit(),
          child: const CoinAppView(),
        ),
      );
}

class CoinAppView extends StatelessWidget {
  const CoinAppView({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) => MaterialApp(
          home: const HomeView(),
          themeMode: themeMode,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
        ),
      );
}
