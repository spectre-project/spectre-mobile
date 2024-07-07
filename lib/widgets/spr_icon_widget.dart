import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kSprIconPath = 'assets/spr_icon.png';

class SprIconWidget extends ConsumerWidget {
  final Size size;

  const SprIconWidget({
    Key? key,
    this.size = const Size(40, 40),
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(size.width / 2),
            child: Image.asset(
              kSprIconPath,
              width: size.width,
              height: size.height,
              filterQuality: FilterQuality.medium,
              isAntiAlias: true,
            ),
          ),
        ],
      ),
    );
  }
}
