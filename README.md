# Crypto-Coins App
Example Flutter Application with Bloc & Freezed + Dio & Retrofit for API REST. Specifically for Antoine challenge :)


<p align="center"><img src="https://github.com/Doldrums/app_crypto/blob/master/images/general.png?raw=true" alt="General image"></p>

<p align="center">
   <a href="https://twitter.com/flutterfiredev">
    <img src="https://img.shields.io/badge/awesome-Flutter-1da1f2.svg?style=plastic" alt="Awesome Flutter" />
  </a>
  <a href="https://github.com/felangel/bloc">
    <img src="https://img.shields.io/badge/maintained%20with-Bloc-f700ff.svg?style=plastic" alt="Maintained with Bloc" />
  </a>
</p>

## Setup 
```
➜  folder ✗ git clone https://github.com/Doldrums/app_crypto.git
➜  app_crypto git:(master) ✗ flutter pub get
➜  app_crypto git:(master) ✗ cd packages/coingecko_api && flutter pub get
➜  app_crypto git:(master) ✗ cd packages/crypto_currency_repository && flutter pub get

# in case there are conflicts in generatet files
➜  app_crypto git:(master) ✗ flutter pub run build_runner build --delete-conflicting-outputs
➜  app_crypto git:(master) ✗ flutter pub run easy_localization:generate --source-dir ./assets/translations -f keys -o locale_keys.g.dart


➜  app_crypto git:(master) ✗ flutter run
```
## Test Coverage
```
➜  app_crypto git:(master) ✗ flutter test                   
00:02 +12: All tests passed! 

➜  coingecko_api git:(master) ✗ flutter test    
00:02 +4: All tests passed!   

➜  crypto_currency_repository git:(master) ✗ flutter test                 
00:02 +1: All tests passed!        
```
- Unit Testing (`flutter_test`)
- Bloc Testing (`bloc_test`)
- Using Mock Data (`mocktail`)
- Github Actions (iOS & Android Testing)

## More Screenshots

<p align="center"><img src="https://github.com/Doldrums/app_crypto/blob/master/images/screens.png?raw=true" alt="General image"></p>
