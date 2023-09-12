import 'package:flutter/material.dart';
import 'package:haraj_app/modules/product/gallery_page/widget/about_gallery_widget.dart';
import 'package:haraj_app/modules/product/gallery_page/widget/ads_gallery_widget.dart';
import 'package:haraj_app/modules/product/gallery_page/widget/gallery_image_widget.dart';

import '../../../shared/assets_manager.dart';
import '../../../shared/components/custom_text.dart';
import '../../../shared/components/custome_image.dart';
import '../../../shared/style/color_manager.dart';
import '../../../shared/widget/custom_tab_bar.dart';
import '../../favorite/widget/process_search_saved_item.dart';
import '../../favorite/widget/prosses_saved_search.dart';
class GalleryPageView extends StatefulWidget {
  const GalleryPageView({Key? key}) : super(key: key);

  @override
  State<GalleryPageView> createState() => _GalleryPageViewState();
}

class _GalleryPageViewState extends State<GalleryPageView> {
  void toggleWidgetVisibility(int index) {
    setState(() {
      SelectedContainer.selectedContainerIndex = index;
    });
  }

  Widget getSelectedWidget() {
    switch (SelectedContainer.selectedContainerIndex) {
      case 0:
        return AboutGalleryWidget();
      case 1:
        return GalleryImageWidget();

      default:
        return AdsGalleryWidget();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CustomSvgImage(imageName: AssetsImage.tabBarbackground,width: MediaQuery.sizeOf(context).width,),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(

                    children: [
                      IconButton(onPressed: (){ Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_sharp)),
                      Spacer(),
                      CustomText(text: 'صفحة المعرض',fontSize: 16,fontWeight: FontWeight.w800,),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColor.white,
                      border: Border.all(color: AppColor.containerGreyColor,width: .5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTabBar((){toggleWidgetVisibility(0);}, "حول المعرض", 0,16),
                        CustomTabBar((){toggleWidgetVisibility(1);}, "صور المعرض", 1,16),
                        CustomTabBar((){toggleWidgetVisibility(2);}, " الاعلانات", 2,16),

                      ],
                    ),
                  ),
                  SizedBox(height: 18,),
                  Visibility(
                    visible: SelectedContainer.selectedContainerIndex != -1,
                    child: getSelectedWidget(),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

