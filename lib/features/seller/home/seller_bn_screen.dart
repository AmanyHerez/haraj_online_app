import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../../../modules/favorite/favorite_screen.dart';
import '../../../modules/home/home_screen.dart';
import '../../../modules/home/model/bn_model.dart';
import '../../../modules/profile/profile_screen.dart';
import '../../../modules/search/search_screen.dart';
import '../add_ads/add_ads_screen.dart';

class MainSellerScreen extends StatefulWidget {
  MainSellerScreen({Key? key}) : super(key: key);

  @override
  State<MainSellerScreen> createState() => _MainSellerScreenState();
}

class _MainSellerScreenState extends State<MainSellerScreen> {
  int _currentIndex = 0;

  final List<BnModel> _bnScreen = <BnModel>[
    const BnModel(widget: HomeScreen()),
    const BnModel(widget: ChatsScreen()),
    const BnModel(widget: SellerAddAdScreen()),
    const BnModel(widget: SearchScreen()),
    const BnModel(widget: ProfileScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bnScreen[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        mouseCursor: MouseCursor.defer,
        type: BottomNavigationBarType.fixed,
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: AppColor.primary,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: CustomSvgImage(
              imageName: _currentIndex == 0
                  ? AssetsImage.fillHomeIcon
                  : AssetsImage.homeIcon,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgImage(
              imageName: _currentIndex == 1
                  ? AssetsImage.FillChatIcon
                  : AssetsImage.chatIcon,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColor.bnColor,
            icon: CustomSvgImage(
              imageName: _currentIndex == 2
                  ? AssetsImage.add_icon
                  : AssetsImage.add_icon,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgImage(
              imageName: _currentIndex == 3
                  ? AssetsImage.fill_setting
                  : AssetsImage.setting,
            ),
            label: " ",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgImage(
              imageName: _currentIndex == 4
                  ? AssetsImage.fillProfileIcon
                  : AssetsImage.profileIcon,
            ),
            label: " ",
          ),
        ],
      ),
    );
  }
}

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
      ),
    );
  }
}
