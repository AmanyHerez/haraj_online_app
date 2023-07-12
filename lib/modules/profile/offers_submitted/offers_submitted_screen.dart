import 'package:flutter/material.dart';
import 'package:haraj_app/modules/profile/offers_submitted/widget/accept_widget.dart';
import 'package:haraj_app/modules/profile/offers_submitted/widget/reject_widget.dart';
import 'package:haraj_app/modules/profile/offers_submitted/widget/waiting_widget.dart';

import '../../../shared/assets_manager.dart';
import '../../../shared/components/custom_text.dart';
import '../../../shared/components/custome_image.dart';
import '../../../shared/style/color_manager.dart';
import '../../../shared/widget/custom_tab_bar.dart';
class OffersSubmittedScreen extends StatefulWidget {
  const OffersSubmittedScreen({Key? key}) : super(key: key);

  @override
  State<OffersSubmittedScreen> createState() => _OffersSubmittedScreenState();
}

class _OffersSubmittedScreenState extends State<OffersSubmittedScreen> {
  void toggleWidgetVisibility(int index) {
    setState(() {
      SelectedContainer.selectedContainerIndex = index;
    });
  }

  Widget getSelectedWidget() {
    switch (SelectedContainer.selectedContainerIndex) {
      case 0:
        return WaitingWidget();
      case 1:
        return AcceptWidget();

      default:
        return RejectWidget();
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

                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: CustomSvgImage(
                        imageName: AssetsImage.arrowIcon,
                        width: 8,
                        height: 13,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomText(text: 'العروض المقدمة',fontSize: 16,),
                  Spacer(),
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
                        CustomTabBar((){toggleWidgetVisibility(0);}, "قيد الانتظار", 0,18),
                        SizedBox(width: 20,),
                        CustomTabBar((){toggleWidgetVisibility(1);}, "مقبول ", 1,18),
                        SizedBox(width: 20,),
                        CustomTabBar((){toggleWidgetVisibility(2);}, " مرفوض", 2,18),

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
