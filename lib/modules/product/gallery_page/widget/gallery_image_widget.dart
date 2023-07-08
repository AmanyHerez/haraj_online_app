import 'package:flutter/material.dart';

import '../../../../shared/assets_manager.dart';

class GalleryImageWidget extends StatelessWidget {
  const GalleryImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return BuildGalleryImageItem();
      },);
  }
}
Widget  BuildGalleryImageItem(){
  return Container(
    height: 234,
    margin: EdgeInsets.only(bottom: 14),
    width: double.infinity,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(

      borderRadius: BorderRadius.circular(8),
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(
          "assets/images/${AssetsImage.car}.png",
        ),
      ),
    ),
  );
}
