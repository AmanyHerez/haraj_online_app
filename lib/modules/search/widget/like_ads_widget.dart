import 'package:flutter/material.dart';
import 'package:haraj_app/modules/search/widget/like_ads_item.dart';
class LikeAdsWidget extends StatelessWidget {
  const LikeAdsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        padding: EdgeInsets.only(right: 20),
        shrinkWrap: true,
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return LikeAdsItem();
      },),
    );
  }
}
