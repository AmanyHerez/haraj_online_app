import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

import '../chat/chat_screen.dart';
import '../favorite/favorite_screen.dart';
import '../profile/profile_screen.dart';
import '../search/search_screen.dart';
import 'home_screen.dart';
import 'model/bn_model.dart';
class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<BnModel> _bnScreen = <BnModel>[
    const BnModel(widget: HomeScreen()),
    const BnModel(widget: FavoriteScreen()),
    const BnModel(widget: ChatsScreen()),
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

            icon:CustomSvgImage(imageName: _currentIndex==0?AssetsImage.fillHomeIcon:AssetsImage.homeIcon,),
            label: " ",
          ),
          BottomNavigationBarItem(

            icon:CustomSvgImage(imageName:_currentIndex==1?AssetsImage.fillIfavoriteIcon: AssetsImage.favoriteIcon,),
            label: " ",
          ),
          BottomNavigationBarItem(

            icon:CustomSvgImage(imageName:_currentIndex==2? AssetsImage.FillChatIcon: AssetsImage.chatIcon,),
            label: " ",
          ),
          BottomNavigationBarItem(

            icon:CustomSvgImage(imageName:_currentIndex==3? AssetsImage.fillSearchIcon :AssetsImage.searchIcon,),
            label: " ",
          ),
          BottomNavigationBarItem(

            icon:CustomSvgImage(imageName: _currentIndex==4?AssetsImage.fillProfileIcon: AssetsImage.profileIcon,),
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
      appBar: AppBar(title: Text('Chat Screen'),),
    );
  }
}
