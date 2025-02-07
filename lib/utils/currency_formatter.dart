
import 'package:currency_formatter/currency_formatter.dart';

extension BrlCurrencyExtension on double {
  String toBrlCurrency() {
    CurrencyFormat brlSettings = CurrencyFormat(
      code: 'brl',
      symbol: 'R\$',
      symbolSide: SymbolSide.left,
      thousandSeparator: '.',
      decimalSeparator: ',',
      symbolSeparator: ' ',
    );
    return CurrencyFormatter.format(this, brlSettings);
  }
}