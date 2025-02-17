import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:hotels_guide/ui/core/widgets/fade_image.dart';
import 'package:hotels_guide/ui/core/widgets/item_card.dart';
import 'package:hotels_guide/ui/hotels/widgets/items/period_item.dart';

import '../../../../domain/entity/suite.dart';
import '../../../../generated/l10n.dart';
import '../../../core/themes/colors.dart';

class SuiteItem extends StatelessWidget {
  final Suite suite;

  const SuiteItem({super.key, required this.suite});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 3,
      children: [
        ItemCard(
          child: Column(
            children: [
              FadeImage(url: suite.fotos[0]),
              SizedBox(height: 10),
              Text(
                suite.nome,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              if (suite.exibirQtdDisponiveis) ...[
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 5,
                  children: [
                    Icon(MdiIcons.alarmLight, color: Colors.red, size: 15),
                    Text(
                      S.current.remainingSuites(suite.qtd),
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
              SizedBox(height: 10),
            ],
          ),
        ),
        ItemCard(
          height: 80,
          child: Row(
            children: [
              SizedBox(width: 5),
              Expanded(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: suite.categoriaItens.length >= 4
                      ? 4
                      : suite.categoriaItens.length,
                  itemBuilder: (_, i) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.background,
                      ),
                      child: Image.network(
                        suite.categoriaItens[i].icone,
                        width: 45,
                        height: 45,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(width: 10),
              Text(
                S.current.seeAll,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: Colors.grey.shade600),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                size: 15,
                color: Colors.grey.shade600,
              ),
              SizedBox(width: 5),
            ],
          ),
        ),
        ListView.separated(
          itemCount: suite.periodos.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (__, i) {
            return PeriodItem(period: suite.periodos[i]);
          },
          separatorBuilder: (_, __) {
            return SizedBox(height: 3);
          },
        )
      ],
    );
  }
}
