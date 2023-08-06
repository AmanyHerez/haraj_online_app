import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
class CustomCachedNetworkImage extends StatelessWidget {
  String imageUrl;
  double? width;
  double? height;
  BoxFit? fit;
  CustomCachedNetworkImage({required this.imageUrl,this.width,this.height,this.fit});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    )
    ;
  }
}
