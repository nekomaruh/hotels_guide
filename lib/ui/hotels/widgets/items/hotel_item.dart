import 'package:flutter/material.dart';
import 'package:hotels_guide/ui/core/themes/colors.dart';
import 'package:hotels_guide/ui/core/widgets/rating_chip.dart';
import 'package:hotels_guide/ui/core/widgets/rating_counter.dart';
import 'package:hotels_guide/ui/hotels/widgets/items/suite_item.dart';

import '../../../../domain/entity/motei.dart';

class HotelItem extends StatelessWidget {
  final Motei motei;

  const HotelItem({super.key, required this.motei});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Header(
          logo: motei.logo,
          name: motei.fantasia,
          location: motei.bairro,
          rating: motei.media.toString(),
          ratingCount: motei.qtdAvaliacoes.toString(),
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 750,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.9),
            itemCount: motei.suites.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: SuiteItem(suite: motei.suites[i]),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  final String logo;
  final String name;
  final String location;
  final String rating;
  final String ratingCount;

  const _Header({
    required this.logo,
    required this.name,
    required this.location,
    required this.rating,
    required this.ratingCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(logo),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(location),
                SizedBox(height: 8),
                Row(
                  children: [
                    RatingChip(stars: rating),
                    SizedBox(width: 10),
                    RatingCounter(count: ratingCount)
                  ],
                )
              ],
            ),
          ),
          SizedBox(width: 20),
          Icon(Icons.favorite, color: AppColors.unselected)
        ],
      ),
    );
  }
}
