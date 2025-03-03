import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIcon extends StatelessWidget {
  final dynamic icon; // Supports IconData, Unicode, or SVG path
  final double size;
  final Color color;

  const CustomIcon({
    super.key,
    required this.icon,
    this.size = 24,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    if (icon is IconData) {
      return Icon(icon, size: size, color: color);
    } else if (icon is String && icon.startsWith('e')) {
      return Icon(
        IconData(
          int.parse(icon, radix: 16),
          fontFamily: 'MaterialSymbolsOutlined',
        ),
        size: size,
        color: color,
      );
    } else if (icon is String && icon.endsWith('.svg')) {
      return SvgPicture.asset(
        icon,
        width: size,
        height: size,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      );
    } else {
      return Icon(
        Icons.error,
        size: size,
        color: Colors.red,
      );
    }
  }
}
