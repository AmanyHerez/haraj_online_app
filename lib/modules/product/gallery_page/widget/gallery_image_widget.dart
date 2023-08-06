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
        image: NetworkImage('https://media.istockphoto.com/id/1189903200/photo/red-generic-sedan-car-isolated-on-white-background-3d-illustration.jpg?s=612x612&w=0&k=20&c=uRu3o_h5FVljLQHS9z0oyz-XjXzzXN_YkyGXwhdMrjs='),
      ),
    ),
  );
}
