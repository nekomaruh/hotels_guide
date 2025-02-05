import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

import '../../../domain/entity/suite.dart';
import '../../core/themes/colors.dart';

class SuiteItem extends StatelessWidget {
  final Suite suite;

  const SuiteItem({super.key, required this.suite});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(suite.fotos[0], fit: BoxFit.cover),
                ),
                SizedBox(height: 10),
                Text(
                  suite.nome,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                if (suite.exibirQtdDisponiveis) ...[
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
                    children: [
                      Icon(MdiIcons.alarmLight, color: Colors.red, size: 15),
                      Text(
                        "só mais ${suite.qtd} pelo app",
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(color: Colors.red),
                      ),
                    ],
                  )
                ],
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
        //SizedBox(height: 5),
        Card(
          child: Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: suite.categoriaItens.length,
                      itemBuilder: (_, i) {
                        return Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.background,
                            ),
                            child: Image.network(suite.categoriaItens[i].icone),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('ver\ntodos', textAlign: TextAlign.right),
                  Icon(Icons.keyboard_arrow_down_rounded, size: 15)
                ],
              )),
        )
      ],
    );
  }
}
