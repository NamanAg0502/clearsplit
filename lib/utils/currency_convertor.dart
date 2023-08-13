import 'package:money_converter/money_converter.dart';
import 'package:money_converter/Currency.dart';

class CurrencyConverter {
  static Future<double?> convert(
    double amount,
    String fromCurrencyCode,
    String toCurrencyCode,
  ) async {
    final fromCurrency = Currency(fromCurrencyCode, amount: amount);
    final toCurrency = Currency(toCurrencyCode);

    final conversionResult =
        await MoneyConverter.convert(fromCurrency, toCurrency);

    return conversionResult;
  }
}
