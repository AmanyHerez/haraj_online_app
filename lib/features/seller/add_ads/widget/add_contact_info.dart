import 'package:flutter/material.dart';



class AddContactInfoScreen extends StatefulWidget {
  const AddContactInfoScreen({super.key});

  @override
  State<AddContactInfoScreen> createState() => _AddContactInfoScreenState();
}

class _AddContactInfoScreenState extends State<AddContactInfoScreen> {
  late TextEditingController _whatsapp;

  late TextEditingController _facebook;

  @override
  void initState() {
    super.initState();
    _whatsapp = TextEditingController();
    _facebook = TextEditingController();
  }

  @override
  void dispose() {
    _whatsapp.dispose();
    _facebook.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
            children:[
            Text('page 1'),
          ]
          // children: [
          //    TitleWave(text: context.localizations.add_contact_information),
          //   Container(
          //     width: double.infinity,
          //     padding: EdgeInsets.symmetric(
          //       horizontal: 12.w,
          //       vertical: 12.h,
          //     ),
          //     margin: EdgeInsets.symmetric(
          //       horizontal: 20.w,
          //       vertical: 20.h,
          //     ),
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10.r),
          //       color: Colors.white,
          //       border: Border.all(color: shadeGrey, width: 1.w),
          //     ),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         SizedBox(
          //           height: 16.h,
          //         ),
          //         Image.asset(
          //           'assets/images/contact_info.png',
          //           width: 120.w,
          //           height: 120.h,
          //         ),
          //         SizedBox(height: 18.h),
          //         Container(
          //           margin: EdgeInsets.symmetric(horizontal: 23.w),
          //           child: Text(
          //             context.localizations.add_new_communication,
          //             textAlign: TextAlign.center,
          //             style: TextStyle(
          //               fontFamily: 'Avenir',
          //               color: mainFontColor,
          //               fontWeight: FontWeight.w500,
          //               fontSize: 18.sp,
          //             ),
          //           ),
          //         ),
          //         SizedBox(height: 16.h),
          //         edit_select_with_textFiled_with_switch_widget(
          //           controller: _whatsapp,
          //           iconName: 'whatsapp.svg',
          //           title: context.localizations.contact_via_whats,
          //         ),
          //         edit_select_with_textFiled_with_switch_widget(
          //           controller: _facebook,
          //           iconName: 'facebook1.svg',
          //           title: context.localizations.contact_via_face,
          //         ),
          //         SizedBox(height: 16.h,),
          //         Divider(color: lightGreyDivider, thickness: 0.5.h),
          //         SizedBox(height: 16.h,),
          //          MySwitchListTile(
          //           text:context.localizations.stop_phone,
          //         ),
          //          MySwitchListTile(
          //           text: context.localizations.stop_chat,
          //         ),
          //
          //         SizedBox(height: 18.h),
          //         AdButton(onPressed: () {
          //           showModalBottomSheet<void>(
          //             backgroundColor: Colors.white,
          //             isScrollControlled: false,
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.only(
          //                   topLeft: Radius.circular(20.r),
          //                   topRight: Radius.circular(20.r),
          //                 )),
          //             context: context,
          //             builder: (BuildContext context) {
          //               return Padding(
          //                 padding: EdgeInsets.symmetric(
          //                     horizontal: 10.w, vertical: 10.h),
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.start,
          //                   crossAxisAlignment: CrossAxisAlignment.center,
          //                   children: [
          //                     Align(
          //                         alignment: Alignment.topLeft,
          //                         child: IconButton(
          //                           onPressed: () {},
          //                           icon: Image.asset('assets/images/cancel.png'),
          //                         )),
          //                     CustomSvgImage(
          //                       imageName: 'done_added',
          //                       height:100.h ,
          //                       width: 100.w,
          //                     ),
          //                     SizedBox(
          //                       height: 15.h,
          //                     ),
          //                     TextUtils(
          //                       fontSize: 18.sp,
          //                       fontWeight: FontWeight.w600,
          //                       text:context.localizations.congratulations,
          //                       color: green,
          //                     ),
          //                     SizedBox(
          //                       height: 10.h,
          //                     ),
          //                     TextUtils(
          //                       fontSize: 16.sp,
          //                       fontWeight: FontWeight.w400,
          //                       text: context.localizations.add_ad_successfully,
          //                       color: mainFontColor,
          //                     ),
          //                     SizedBox(
          //                       height: 25.h,
          //                     ),
          //                     Row(
          //                       children: [
          //                         Expanded(
          //                             child: AdButton(
          //                               onPressed: () {
          //                                 Navigator.pushNamed(context, '/add_ad_screen');
          //                               },
          //                               text: 'نعم',
          //                             )),
          //                         SizedBox(
          //                           width: 16.w,
          //                         ),
          //                         Expanded(
          //                           child: ElevatedButton(
          //                             onPressed: () {
          //                               Navigator.pushNamed(context,'/main_screen');
          //                             },
          //                             style: ElevatedButton.styleFrom(
          //                               minimumSize: Size(360.w, 50.h),
          //                               backgroundColor: Colors.white,
          //                               elevation: 0,
          //                               shape: RoundedRectangleBorder(
          //                                 borderRadius: BorderRadius.circular(12.r),
          //                                 side: BorderSide(
          //                                   color: mainColor,
          //                                   width: 1.w,
          //                                 ),
          //                               ),
          //                             ),
          //                             child: TextUtils(
          //                               fontSize: 14.sp,
          //                               fontWeight: FontWeight.w500,
          //                               text: 'لا',
          //                               color: mainColor,
          //                             ),
          //                           ),
          //                         ),
          //                       ],
          //                     )
          //                   ],
          //                 ),
          //               );
          //             },
          //           );
          //         }, text: context.localizations.publish_ad),
          //         SizedBox(height: 18.h),
          //       ],
          //     ),
          //   ),
          //   // Expanded(
          //   //   child: Container(
          //   //     width: double.infinity,
          //   //     padding: EdgeInsets.symmetric(
          //   //       horizontal: 12.w,
          //   //       vertical: 12.h,
          //   //     ),
          //   //     margin: EdgeInsets.symmetric(
          //   //       horizontal: 20.w,
          //   //       vertical: 20.h,
          //   //     ),
          //   //     decoration: BoxDecoration(
          //   //       borderRadius: BorderRadius.circular(8.r),
          //   //       color: Colors.white,
          //   //       border: Border.all(color: shadeGrey, width: 1.w),
          //   //     ),
          //   //     child: Column(
          //   //       mainAxisAlignment: MainAxisAlignment.start,
          //   //       crossAxisAlignment: CrossAxisAlignment.center,
          //   //       children: [
          //   //         SizedBox(
          //   //           height: 28.h,
          //   //         ),
          //   //         Image.asset(
          //   //           'assets/images/contact_info.png',
          //   //           width: 150.w,
          //   //           height: 150.h,
          //   //         ),
          //   //         SizedBox(height: 24.h),
          //   //         Container(
          //   //           margin: EdgeInsets.symmetric(horizontal: 23.w),
          //   //           child: Text(
          //   //             'قم باضافة وسائل تواصل جديدة للعلان بجانب الدردشة الداخلية الخاصة بنا',
          //   //             textAlign: TextAlign.center,
          //   //             style: TextStyle(
          //   //               fontFamily: 'Avenir',
          //   //               color: mainFontColor,
          //   //               fontWeight: FontWeight.w500,
          //   //               fontSize: 18.sp,
          //   //             ),
          //   //           ),
          //   //         ),
          //   //         SizedBox(height: 24.h),
          //   //         InfoTextFromField(
          //   //             controller: _whatsapp,
          //   //             prefixIcon: 'whatsapp',
          //   //             hintText: 'ادخل رقم الواتساب'),
          //   //         InfoTextFromField(
          //   //             controller: _facebook,
          //   //             prefixIcon: 'facebook',
          //   //             hintText: 'ادخل اسم المستخدم لفيسبوك'),
          //   //         Divider(color: shadeGrey, height: 40.h, thickness: 2.h),
          //   //         const MySwitchListTile(
          //   //           text: 'ايقاف التواصل عبر رقم الهاتف',
          //   //         ),
          //   //         const MySwitchListTile(
          //   //           text: 'ايقاف التواصل عبر الدردشة',
          //   //         ),
          //   //         SizedBox(height: 24.h),
          //   //         AdButton(onPressed: () {}, text: 'نشر الاعلان'),
          //   //       ],
          //   //     ),
          //   //   ),
          //   // ),
          // ],
        ),
      ),
    );
  }
}
