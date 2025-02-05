import 'package:flutter/material.dart';
import 'package:hotels_guide/ui/hotels/widgets/suite_item.dart';

import '../../../domain/entity/motei.dart';
import '../../core/themes/colors.dart';

class HotelItem extends StatelessWidget {
  final Motei motei;

  const HotelItem({super.key, required this.motei});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(motei.logo),
          ),
          title: Text(motei.fantasia),
          subtitle: Text(motei.bairro),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: AppColors.unselected,
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(width: 70),
            Container(
              padding: EdgeInsets.only(left: 2, right: 4),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.amber,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                spacing: 1,
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 12),
                  Text(
                    motei.media.toString(),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          fontSize: 10,
                        ),
                  )
                ],
              ),
            ),
            SizedBox(width: 5),
            Text(
              '${motei.qtdAvaliacoes} avaliacoes',
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontSize: 10,
                  ),
            ),
            SizedBox(width: 3),
            Icon(Icons.keyboard_arrow_down_rounded, size: 12)
          ],
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 600,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.9),
            itemCount: motei.suites.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SuiteItem(suite: motei.suites[i]),
              );
            },
          ),
        ),
      ],
    );
  }
}
