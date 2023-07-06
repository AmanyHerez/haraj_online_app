import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

class TypeAccountScreen extends StatelessWidget {
  const TypeAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(
            height: 60,
          ),
          Center(
            child: Container(
              width: 103,
              height: 103,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColor.lightGrey,
              ),
              child: CustomSvgImage(
                imageName: AssetsImage.exclamationIcon,
              ),
            ),
          ),
          SizedBox(
            height:40,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('حدد نوع الحساب',style: TextStyle(color: AppColor.black,fontFamily: FontConstants.fontFamily),),
          ),
          SizedBox(
            height:10,
          ),
             Divider(
              color: AppColor.dividerGreyColor,
              height: 1,
              thickness: 1,
            ),

          typeAcountWidget(title: 'حساب بائع',nameIcon: AssetsImage.sellerIcon),
          Divider(
              color: AppColor.dividerGreyColor,
              height: 1,
              thickness: 1,
            ),
          typeAcountWidget(title: 'حساب مشتري',nameIcon: AssetsImage.buyerIcon),
          Divider(
            color: AppColor.dividerGreyColor,
            height: 1,
            thickness: 1,
          ),
          SizedBox(
            height:30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomElevatedButton(text: 'انشاء', onPressed: (){},bgColor: AppColor.primary,),
          )
        ],
      ),
    );
  }
}
Widget typeAcountWidget({required String title,required String nameIcon}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    child: Row(
      children: [
        Container(
          width: 40,
          height: 40,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: AppColor.lightGrey,
              )),
          child: CustomSvgImage(
            imageName: nameIcon,
          ),
        ),
        SizedBox(
          width:10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: AppColor.black,
                  fontFamily: FontConstants.fontFamily
              ),
            ),
            Text(
              'يستجوب دفع رسوم اشتراك ',
              style: TextStyle(
                color: AppColor.grey,
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppColor.lightGrey,
          ),
        )
      ],
    ),
  );
}
