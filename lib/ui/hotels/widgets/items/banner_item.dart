import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:hotels_guide/ui/core/themes/colors.dart';
import 'package:hotels_guide/ui/core/widgets/fade_image.dart';
import 'package:hotels_guide/ui/core/widgets/item_card.dart';

import '../../../../generated/l10n.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ItemCard(
      child: LayoutBuilder(
        builder: (_, constraints) {
          final width = constraints.maxWidth;
          return SizedBox(
            height: width / 2,
            child: Row(
              spacing: 10,
              children: [
                Expanded(
                  child: FadeImage(
                    url: 'https://picsum.photos/500',
                    width: width,
                    height: width,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _TitleSection(),
                      Spacer(),
                      _ReserveSection(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection();

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(MdiIcons.bed, size: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Featured hotel! - Wallaby 1402 Sydney',
                maxLines: 2,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                'Australia',
                maxLines: 1,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ReserveSection extends StatelessWidget {
  const _ReserveSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(3),
            child: Text(
              S.current.discount("30"),
              maxLines: 1,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Divider(
            color: AppColors.white,
            thickness: 2,
            height: 5,
            indent: 5,
            endIndent: 5,
          ),
          Padding(
            padding: EdgeInsets.all(3),
            child: Text(
              S.current.startingFromBrl(15),
              maxLines: 1,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          FilledButton(
            onPressed: () {},
            style: ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                backgroundColor: WidgetStateProperty.all(AppColors.green),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                minimumSize: WidgetStateProperty.all(
                  Size(double.infinity, 30),
                ),
                maximumSize: WidgetStateProperty.all(
                  Size(double.infinity, 30),
                ),
                padding: WidgetStateProperty.all(EdgeInsets.zero)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.current.reserve,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: AppColors.white, fontWeight: FontWeight.w600),
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.chevron_right_rounded,
                  size: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
