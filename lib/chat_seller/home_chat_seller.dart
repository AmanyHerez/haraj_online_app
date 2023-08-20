import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:haraj_app/chat_seller/request_message.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../modules/chat/custom_chat_screen.dart';
import '../modules/chat/data/my_data.dart';
import '../modules/chat/data/time_date_send.dart';
import '../modules/chat/firebase/fb_firestore_chats_controller.dart';
import '../modules/chat/firebase/fb_firestore_users_controller.dart';
import '../modules/chat/get/bindings/app/profile_screen_binding.dart';
import '../modules/chat/get/controllers/app/profile_screen_controller.dart';
import '../modules/chat/model/chat.dart';
import '../modules/chat/model/chat_user.dart';
import '../modules/chat/widget/shimmer/chat_shimmer.dart';
import '../route/routes.dart';
import '../shared/assets_manager.dart';
import '../shared/components/custom_cached_network_image.dart';
import '../shared/components/custom_text.dart';
import '../shared/components/custom_textformfiled.dart';
import '../shared/components/custome_image.dart';
import '../shared/widget/custom_tab_bar.dart';
import '../shared/widget/row_divider_widget.dart';
import 'chat_seller_screen.dart';

class HomeChatSellerScreen extends StatefulWidget {
  const HomeChatSellerScreen({Key? key}) : super(key: key);

  @override
  State<HomeChatSellerScreen> createState() => _HomeChatSellerScreenState();
}

class _HomeChatSellerScreenState extends State<HomeChatSellerScreen> {
  void toggleWidgetVisibility(int index) {
    setState(() {
      SelectedContainer.selectedContainerIndex = index;
    });
  }

  Widget getSelectedWidget() {
   // Get.put(ProfileScreenController);
    switch (SelectedContainer.selectedContainerIndex) {

      case 0:
        return RequestMessageWidget();
      default:
        return ChatSellerScreen();
    }
  }

  String adType = 'chat';
  List items = ['', '', ''];

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
                  CustomSvgImage(
                    imageName: AssetsImage.background3,
                    width: MediaQuery.sizeOf(context).width,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50, right: 20, left: 20),
                    child: Column(
                      children: [
                        Center(
                            child: CustomText(
                          text: 'الدردشة',
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        )),
                        SizedBox(
                          height: 8,
                        ),
                        CustomTextFomField(
                          title: 'ابحث عن المحادثة',
                          fillColor: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          iconNamePuffix: AssetsImage.searchIcon,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          // borderSide:
                          //     BorderSide(width: .5, color: Colors.greenAccent),
                          radius: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 60,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: AppColor.containerBorderColor, width: .5),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.lightGrey,
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTabBar(() {
                            toggleWidgetVisibility(0);
                          }, "طلبات المراسلة", 0, 43),
                          CustomTabBar(() {
                            toggleWidgetVisibility(1);
                          }, "الدردشة", 1, 43),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),

                    SizedBox(
                      height: 16,
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
        ));
  }
}
