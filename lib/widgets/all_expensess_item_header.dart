import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader(
      {super.key, required this.image, this.imageBackgrund, this.imageColor});
  final String image;
  final Color? imageBackgrund, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: ShapeDecoration(
                color: imageBackgrund ?? const Color(0xFFFAFAFA),
                shape: const OvalBorder(),
              ),
              child: Center(
                child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor == null ? const Color(0xFF064060) : Colors.white,
          ),
        )
      ],
    );
  }
}
