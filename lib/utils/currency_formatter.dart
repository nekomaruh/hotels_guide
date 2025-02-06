
import 'package:currency_formatter/currency_formatter.dart';

String formatBrlCurrency(double brl) {
  CurrencyFormat brlSettings = CurrencyFormat(
    code: 'brl',
    symbol: 'R\$',
    symbolSide: SymbolSide.left,
    thousandSeparator: '.',
    decimalSeparator: ',',
    symbolSeparator: ' ',
  );
  final format = CurrencyFormatter.format(brl, brlSettings);
  return format;
}