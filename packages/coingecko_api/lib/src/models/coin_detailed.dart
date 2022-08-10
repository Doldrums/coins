import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_detailed.freezed.dart';

part 'coin_detailed.g.dart';

/// ids
/// bitcoin
/// ethereum
/// tether
/// usdc
/// BNB
@freezed
class CoinDetailed with _$CoinDetailed {
  const factory CoinDetailed({
    required String? id,
    required String? symbol,
    required String? name,
    required String? assetPlatformId,
    required List<String?> platforms,
    required int? blockTimeInMinutes,
    required String? hashingAlgorithm,
    required List<String?> categories,
    required String? publicNotice,
    required List<String?> additionalNotices,
    required Localization? localization,
    required Description? description,
    //required Links? links,
    required Image? image,
    required String? countryOrigin,
    required DateTime? genesisDate,
    required double? sentimentVotesUpPercentage,
    required double? sentimentVotesDownPercentage,
    //required IcoData? icoData,
    required int? marketCapRank,
    required int? coingeckoRank,
    required double? coingeckoScore,
    required double? developerScore,
    required double? communityScore,
    required double? liquidityScore,
    required double? publicInterestScore,
    required MarketData? marketData,
    required DateTime? lastUpdated,
  }) = _CoinDetailed;

  factory CoinDetailed.fromJson(Map<String, Object?> json) =>
      _$CoinDetailedFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    required String? thumb,
    required String? small,
    required String? large,
  }) = _Image;

  factory Image.fromJson(Map<String, Object?> json) => _$ImageFromJson(json);
}

@freezed
class MarketData with _$MarketData {
  const factory MarketData(
      {required CurrentPrice currentPrice,
      required String? roi,
      required MarketCap marketCap,
      required int marketCapRank,
      required TotalVolume totalVolume,
      required High24h high24h,
      required Low24h low24h,
      required double priceChange24h,
      required double priceChangePercentage24h,
      required double priceChangePercentage7d,
      required double priceChangePercentage14d,
      required double priceChangePercentage30d,
      required double priceChangePercentage60d,
      required double priceChangePercentage200d,
      required double priceChangePercentage1y,
      required double marketCapChange24h,
      required double marketCapChangePercentage24h,
      required PriceChange24hInCurrency priceChange24hInCurrency,
      required PriceChangePercentage1hInCurrency
          priceChangePercentage1hInCurrency,
      required PriceChangePercentage24hInCurrency
          priceChangePercentage24hInCurrency,
      required PriceChangePercentage7dInCurrency
          priceChangePercentage7dInCurrency,
      required PriceChangePercentage14dInCurrency
          priceChangePercentage14dInCurrency,
      required PriceChangePercentage30dInCurrency
          priceChangePercentage30dInCurrency,
      required PriceChangePercentage60dInCurrency
          priceChangePercentage60dInCurrency,
      required PriceChangePercentage200dInCurrency
          priceChangePercentage200dInCurrency,
      required PriceChangePercentage1yInCurrency
          priceChangePercentage1yInCurrency,
      required MarketCapChange24hInCurrency marketCapChange24hInCurrency,
      required MarketCapChangePercentage24hInCurrency
          marketCapChangePercentage24hInCurrency,
      required double totalSupply,
      required double circulatingSupply}) = _MarketData;

  factory MarketData.fromJson(Map<String, Object?> json) =>
      _$MarketDataFromJson(json);
}

@freezed
class CurrentPrice with _$CurrentPrice {
  const factory CurrentPrice({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _CurrentPrice;

  factory CurrentPrice.fromJson(Map<String, Object?> json) =>
      _$CurrentPriceFromJson(json);
}

@freezed
class MarketCap with _$MarketCap {
  const factory MarketCap({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _MarketCap;

  factory MarketCap.fromJson(Map<String, Object?> json) =>
      _$MarketCapFromJson(json);
}

@freezed
class TotalVolume with _$TotalVolume {
  const factory TotalVolume({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _TotalVolume;

  factory TotalVolume.fromJson(Map<String, Object?> json) =>
      _$TotalVolumeFromJson(json);
}

@freezed
class High24h with _$High24h {
  const factory High24h({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _High24h;

  factory High24h.fromJson(Map<String, Object?> json) =>
      _$High24hFromJson(json);
}

@freezed
class Low24h with _$Low24h {
  const factory Low24h({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _Low24h;

  factory Low24h.fromJson(Map<String, Object?> json) => _$Low24hFromJson(json);
}

@freezed
class PriceChange24hInCurrency with _$PriceChange24hInCurrency {
  const factory PriceChange24hInCurrency({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _PriceChange24hInCurrency;

  factory PriceChange24hInCurrency.fromJson(Map<String, Object?> json) =>
      _$PriceChange24hInCurrencyFromJson(json);
}

@freezed
class PriceChangePercentage24hInCurrency
    with _$PriceChangePercentage24hInCurrency {
  const factory PriceChangePercentage24hInCurrency({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _PriceChangePercentage24hInCurrency;

  factory PriceChangePercentage24hInCurrency.fromJson(
          Map<String, Object?> json) =>
      _$PriceChangePercentage24hInCurrencyFromJson(json);
}

@freezed
class PriceChangePercentage1hInCurrency
    with _$PriceChangePercentage1hInCurrency {
  const factory PriceChangePercentage1hInCurrency({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _PriceChangePercentage1hInCurrency;

  factory PriceChangePercentage1hInCurrency.fromJson(
          Map<String, Object?> json) =>
      _$PriceChangePercentage1hInCurrencyFromJson(json);
}

@freezed
class PriceChangePercentage7dInCurrency
    with _$PriceChangePercentage7dInCurrency {
  const factory PriceChangePercentage7dInCurrency({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _PriceChangePercentage7dInCurrency;

  factory PriceChangePercentage7dInCurrency.fromJson(
          Map<String, Object?> json) =>
      _$PriceChangePercentage7dInCurrencyFromJson(json);
}

@freezed
class PriceChangePercentage14dInCurrency
    with _$PriceChangePercentage14dInCurrency {
  const factory PriceChangePercentage14dInCurrency({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _PriceChangePercentage14dInCurrency;

  factory PriceChangePercentage14dInCurrency.fromJson(
          Map<String, Object?> json) =>
      _$PriceChangePercentage14dInCurrencyFromJson(json);
}

@freezed
class PriceChangePercentage30dInCurrency
    with _$PriceChangePercentage30dInCurrency {
  const factory PriceChangePercentage30dInCurrency({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _PriceChangePercentage30dInCurrency;

  factory PriceChangePercentage30dInCurrency.fromJson(
          Map<String, Object?> json) =>
      _$PriceChangePercentage30dInCurrencyFromJson(json);
}

@freezed
class PriceChangePercentage60dInCurrency
    with _$PriceChangePercentage60dInCurrency {
  const factory PriceChangePercentage60dInCurrency({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _PriceChangePercentage60dInCurrency;

  factory PriceChangePercentage60dInCurrency.fromJson(
          Map<String, Object?> json) =>
      _$PriceChangePercentage60dInCurrencyFromJson(json);
}

@freezed
class PriceChangePercentage200dInCurrency
    with _$PriceChangePercentage200dInCurrency {
  const factory PriceChangePercentage200dInCurrency({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _PriceChangePercentage200dInCurrency;

  factory PriceChangePercentage200dInCurrency.fromJson(
          Map<String, Object?> json) =>
      _$PriceChangePercentage200dInCurrencyFromJson(json);
}

@freezed
class PriceChangePercentage1yInCurrency
    with _$PriceChangePercentage1yInCurrency {
  const factory PriceChangePercentage1yInCurrency({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _PriceChangePercentage1yInCurrency;

  factory PriceChangePercentage1yInCurrency.fromJson(
          Map<String, Object?> json) =>
      _$PriceChangePercentage1yInCurrencyFromJson(json);
}

@freezed
class MarketCapChange24hInCurrency with _$MarketCapChange24hInCurrency {
  const factory MarketCapChange24hInCurrency({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _MarketCapChange24hInCurrency;

  factory MarketCapChange24hInCurrency.fromJson(Map<String, Object?> json) =>
      _$MarketCapChange24hInCurrencyFromJson(json);
}

@freezed
class MarketCapChangePercentage24hInCurrency
    with _$MarketCapChangePercentage24hInCurrency {
  const factory MarketCapChangePercentage24hInCurrency({
    required double aed,
    required double ars,
    required double aud,
    required double bch,
    required double bdt,
    required double bhd,
    required double bmd,
    required double bnb,
    required double brl,
    required double btc,
    required double cad,
    required double chf,
    required double clp,
    required double cny,
    required double czk,
    required double dkk,
    required double dot,
    required double eos,
    required double eth,
    required double eur,
    required double gbp,
    required double hkd,
    required double huf,
    required double idr,
    required double ils,
    required double inr,
    required double jpy,
    required double krw,
    required double kwd,
    required double lkr,
    required double ltc,
    required double mmk,
    required double mxn,
    required double myr,
    required double ngn,
    required double nok,
    required double nzd,
    required double php,
    required double pkr,
    required double pln,
    required double rub,
    required double sar,
    required double sek,
    required double sgd,
    required double thb,
    required double trY,
    required double twd,
    required double uah,
    required double usd,
    required double vef,
    required double vnd,
    required double xag,
    required double xau,
    required double xdr,
    required double xlm,
    required double xrp,
    required double yfi,
    required double zar,
    required double bits,
    required double link,
    required double ats,
  }) = _MarketCapChangePercentage24hInCurrency;

  factory MarketCapChangePercentage24hInCurrency.fromJson(
          Map<String, Object?> json) =>
      _$MarketCapChangePercentage24hInCurrencyFromJson(json);
}

@freezed
class Localization with _$Localization {
  const factory Localization({
    required String? en,
    required String? de,
    required String? es,
    required String? fr,
    required String? it,
    required String? pl,
    required String? ro,
    required String? hu,
    required String? nl,
    required String? pt,
    required String? sv,
    required String? vi,
    required String? tr,
    required String? ru,
    required String? ja,
    required String? zh,
    required String? zhTw,
    required String? ko,
    required String? ar,
    required String? th,
    required String? id,
    required String? cs,
    required String? da,
    required String? el,
    required String? hi,
    required String? no,
    required String? sk,
    required String? uk,
    required String? he,
    required String? fi,
    required String? bg,
    required String? hr,
    required String? lt,
    required String? sl,
  }) = _Localization;

  factory Localization.fromJson(Map<String, Object?> json) =>
      _$LocalizationFromJson(json);
}

@freezed
class Description with _$Description {
  const factory Description({
    required String? en,
    required String? de,
    required String? es,
    required String? fr,
    required String? it,
    required String? pl,
    required String? ro,
    required String? hu,
    required String? nl,
    required String? pt,
    required String? sv,
    required String? vi,
    required String? tr,
    required String? ru,
    required String? ja,
    required String? zh,
    required String? zhTw,
    required String? ko,
    required String? ar,
    required String? th,
    required String? id,
    required String? cs,
    required String? da,
    required String? el,
    required String? hi,
    required String? no,
    required String? sk,
    required String? uk,
    required String? he,
    required String? fi,
    required String? bg,
    required String? hr,
    required String? lt,
    required String? sl,
  }) = _Description;

  factory Description.fromJson(Map<String, Object?> json) =>
      _$DescriptionFromJson(json);
}
