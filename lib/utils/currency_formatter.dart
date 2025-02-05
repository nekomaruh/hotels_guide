
import 'package:currency_formatter/currency_formatter.dart';

String formatCurrency(double brl) {
  CurrencyFormat brlSettings = CurrencyFormat(
    code: 'brl',
    symbol: 'R\$',
    symbolSide: SymbolSide.left,
    thousandSeparator: '.',
    decimalSeparator: ',',
    symbolSeparator: ' ',
  );
  return CurrencyFormatter.format(brl, brlSettings);
}