import 'package:flutter/material.dart';
import 'package:hotels_guide/domain/entity/periodo.dart';
import 'package:hotels_guide/ui/core/widgets/discount_chip.dart';
import 'package:hotels_guide/ui/core/widgets/item_card.dart';
import 'package:hotels_guide/utils/currency_formatter.dart';

class PeriodItem extends StatelessWidget {
  final Periodo period;

  const PeriodItem({super.key, required this.period});

  @override
  Widget build(BuildContext context) {
    final hasDiscount = period.desconto != null;
    final amount = formatBrlCurrency(period.valor);
    final total = formatBrlCurrency(period.valorTotal);

    return ItemCard(
      child: ListTile(
        title: Row(
          children: [
            Text(
              period.tempoFormatado,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.black87
              ),
            ),
            if (hasDiscount) ...[
              SizedBox(width: 10),
              DiscountChip(
                discount: period.desconto!.desconto.toInt().toString(),
              )
            ]
          ],
        ),
        subtitle: Row(
          children: [
            if (hasDiscount) ...[
              Text(
                amount,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      decoration:
                          hasDiscount ? TextDecoration.lineThrough : null,
                      color: Colors.grey,
                    ),
              ),
              SizedBox(width: 10),
            ],
            Text(total, style: Theme.of(context).textTheme.titleLarge)
          ],
        ),
        trailing: Icon(Icons.chevron_right_rounded),
      ),
    );
  }
}
