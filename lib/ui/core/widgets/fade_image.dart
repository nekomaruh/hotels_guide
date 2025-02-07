import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../themes/colors.dart';

class FadeImage extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;

  const FadeImage({
    super.key,
    required this.url,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: CachedNetworkImage(
        imageUrl: url,
        placeholder: (_, __) => Shimmer.fromColors(
          baseColor: AppColors.unselected,
          highlightColor: AppColors.background,
          child: Container(
            width: width,
            height: width,
            color: Colors.black,
          ),
        ),
        errorWidget: (context, url, error) => Center(
          child: Icon(Icons.error),
        ),
        fit: BoxFit.cover,
        width: width,
        height: width,
      ),
    );
  }
}
