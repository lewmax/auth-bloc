import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgButtonWidget extends StatelessWidget {
  final Function() onTap;
  final EdgeInsetsGeometry? padding;
  final String? assetName;
  final double? height;

  const SvgButtonWidget({
    required this.onTap,
    required this.assetName,
    this.padding,
    this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        padding: padding,
        child:
            assetName != null ? SvgPicture.asset(assetName!) : const SizedBox(),
      ),
    );
  }
}
