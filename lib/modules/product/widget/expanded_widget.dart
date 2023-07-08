import 'package:flutter/material.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../shared/assets_manager.dart';
import '../../../shared/components/custome_image.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.grey,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: AppColor.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: AppColor.primary,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "assets/images/${AssetsImage.car}.png",
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.zero,
                      clipBehavior: Clip.antiAlias,
                      margin: EdgeInsets.only(left: 2, right: 2),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: AppColor.white),
                      ),
                      child: CustomPngImage(
                        imageName: AssetsImage.car,
                        width: 70,
                        height: 70,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
