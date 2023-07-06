import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CustomPngImage extends StatelessWidget {
  final String? imageName;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit? fit;
  CustomPngImage(
      {this.imageName, this.height, this.width, this.color, this.fit});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$imageName.png',
      height: height,
      width: width,
      fit: fit,
      color: color,
    );
  }
}

class CustomSvgImage extends StatelessWidget {
  final String imageName;
  final double? height;
  final double? width;
  final Color? color;
  CustomSvgImage({
    required this.imageName,
     this.height,
     this.width,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svg/$imageName.svg',
      color: color,
      height: height,
      width: width,
   fit: BoxFit.contain,


    );
  }
}