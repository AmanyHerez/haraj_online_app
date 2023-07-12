import 'package:flutter/material.dart';

import '../../../shared/assets_manager.dart';
import '../../../shared/components/custom_text.dart';
import '../../../shared/components/custome_image.dart';
import '../../../shared/style/color_manager.dart';
class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isExpanded=false;
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
                  CustomText(text: 'صفحة الاعدادات',fontSize: 16,),
                  Spacer(),
                ],
              ),

            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 200,
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppColor.dividerGreyColor),
                        ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           CustomText(text: 'معلومات الحساب',fontSize: 16,fontWeight: FontWeight.w300,color: AppColor.grey,),
                        // ExpansionPanelList(
                        //   expansionCallback: (int index, bool isExpanded) {},
                        //   children: [
                        //     ExpansionPanel(
                        //       headerBuilder: (BuildContext context, bool isExpanded) {
                        //         return ListTile(
                        //           title: Text('Item 1'),
                        //         );
                        //       },
                        //       body: ListTile(
                        //         title: Text('Item 1 child'),
                        //         subtitle: Text('Details goes here'),
                        //       ),
                        //       isExpanded: true,
                        //     ),
                        //     ExpansionPanel(
                        //       headerBuilder: (BuildContext context, bool isExpanded) {
                        //         return ListTile(
                        //           title: Text('Item 2'),
                        //         );
                        //       },
                        //       body: ListTile(
                        //         title: Text('Item 2 child'),
                        //         subtitle: Text('Details goes here'),
                        //       ),
                        //       isExpanded: false,
                        //     ),
                        //   ],
                        // ),
                         ],
                       ),
                      ),


                    ],
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
