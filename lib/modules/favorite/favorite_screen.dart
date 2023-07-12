import 'package:flutter/material.dart';
import 'package:haraj_app/modules/favorite/widget/ads_save_widget.dart';
import 'package:haraj_app/modules/favorite/widget/prosses_saved_search.dart';

import '../../shared/assets_manager.dart';
import '../../shared/components/custom_text.dart';
import '../../shared/style/color_manager.dart';
import '../../shared/widget/custom_tab_bar.dart';
class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  void toggleWidgetVisibility(int index) {
    setState(() {
      SelectedContainer.selectedContainerIndex = index;
    });
  }

  Widget getSelectedWidget() {
    switch (SelectedContainer.selectedContainerIndex) {
      case 0:
        return ProssesSearchSavedWidget();


      default:
        return AdsSaveWidget();
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
            Container(
              width: double.infinity,
              height: 110,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/${AssetsImage.background}.png",
                  ),
                ),
              ),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CustomText(text: 'المحفوظات ',fontSize: 16,),

                ],
              ),

            ),
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
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColor.dividerGreyColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTabBar((){toggleWidgetVisibility(0);}, "الاعلانات المحفوظة ", 0,16),
                        CustomTabBar((){toggleWidgetVisibility(1);}, " عمليات بحث محفوظة", 1,16),


                      ],
                    ),
                  ),

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
