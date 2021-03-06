# Currency picker

[![pub package](https://img.shields.io/pub/v/currency_picker.svg)](https://pub.dev/packages/currency_picker)

A flutter package to select a currency from a list of currencies. 

<img height="600" alt="n1" src="https://raw.githubusercontent.com/Daniel-Ioannou/flutter_currency_picker/master/assets/ReadMe%20Screenshot.png">

## Getting Started

 Add the package to your pubspec.yaml:

 ```yaml
 currency_picker: ^1.0.2
 ```
 
 In your dart file, import the library:

 ```Dart
 import 'package:currency_picker/currency_picker.dart';
 ``` 
  Show currency picker using `showCurrencyPicker`:
```Dart
showCurrencyPicker(
   context: context,
   onSelect: (Currency currency) {
      print('Select currency: ${currency.name}');
   },
);
```

### Parameters:
* `onSelect`: Called when a currency is select. The currency picker passes the new value to the callback (required)
* `currencyFilter`: Can be used to uses filter the Currency list (optional).
  ```Dart
   showCurrencyPicker(
      context: context,
      onSelect: (Currency currency) {
         print('Select currency: ${currency.name}');
      },
      currencyFilter: <String>['EUR', 'GBP', 'USD', 'AUD', 'CAD', 'JPY', 'HKD', 'CHF', 'SEK', 'ILS'],
   );
  ``` 

## Contributions
Contributions of any kind are more than welcome! Feel free to fork and improve currency_picker in any way you want, make a pull request, or open an issue.
