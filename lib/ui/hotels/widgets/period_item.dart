import 'package:flutter/material.dart';
import 'package:hotels_guide/domain/entity/periodo.dart';
import 'package:hotels_guide/ui/core/widgets/item_card.dart';

class PeriodItem extends StatelessWidget {
  final Periodo period;

  const PeriodItem({super.key, required this.period});

  @override
  Widget build(BuildContext context) {
    final hasDiscount = period.desconto != null;

    return ItemCard(
      child: ListTile(
        title: Row(
          children: [
            Text(period.tempo),
            if (hasDiscount)
              Expanded(
                child: Text(
                  period.desconto!.desconto.toString(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
