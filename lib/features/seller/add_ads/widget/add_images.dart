import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class AddCarImages extends StatefulWidget {
  const AddCarImages({super.key});

  @override
  State<AddCarImages> createState() => _AddCarImagesState();
}

class _AddCarImagesState extends State<AddCarImages> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children:[
            Text('page 2'),
          ]
        // children: [
        //   Container(
        //     width: double.infinity,
        //     height: 450.h,
        //     margin: EdgeInsets.symmetric(
        //       horizontal: 12.w,
        //       vertical: 12.h,
        //     ),
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10.r),
        //       color: Colors.white,
        //       border: Border.all(color: shadeGrey, width: 1.w),
        //     ),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Padding(
        //           padding:
        //               EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
        //           child: TextUtils(
        //               fontSize: 16.sp,
        //               fontWeight: FontWeight.w400,
        //               text: context.localizations.add_car_images,
        //               color: mainFontColor),
        //         ),
        //         Divider(
        //           color: shadeGrey,
        //           height: 20.h,
        //           thickness: 2.h,
        //         ),
        //         Center(child: Image.asset('assets/images/addimage.png')),
        //         Padding(
        //           padding: EdgeInsets.symmetric(horizontal: 20.w),
        //           child: Text(
        //             context.localizations.must_add_images,
        //             textAlign: TextAlign.center,
        //             style: TextStyle(
        //                 fontFamily: 'Avenir',
        //                 fontSize: 16.sp,
        //                 color: mainFontColor,
        //                 fontWeight: FontWeight.w400),
        //           ),
        //         ),
        //         const Spacer(),
        //         Row(
        //           children: [
        //             Expanded(
        //                 child: SizedBox(
        //               height: 50.h,
        //               child: ElevatedButton(
        //                   onPressed: () {},
        //                   style: ElevatedButton.styleFrom(
        //                     elevation: 0,
        //                     backgroundColor: shadeRed,
        //                     shape: RoundedRectangleBorder(
        //                       borderRadius: BorderRadius.only(
        //                         bottomRight: Radius.circular(10.r),
        //                       ),
        //                     ),
        //                   ),
        //                   child: SvgPicture.asset('assets/svg/delete.svg')),
        //             )),
        //             VerticalDivider(color: lightGreyDivider, width: 1.w),
        //             Expanded(
        //                 child: SizedBox(
        //               height: 50.h,
        //               child: ElevatedButton(
        //                   onPressed: () {},
        //                   style: ElevatedButton.styleFrom(
        //                       elevation: 0,
        //                       shape: RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.only(
        //                             bottomLeft: Radius.circular(10.r)),
        //                       ),
        //                       backgroundColor: shadeRed),
        //                   child: const Icon(
        //                     Icons.add,
        //                     color: mainColor,
        //                   )),
        //             )),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        //   Divider(
        //     color: shadeGrey,
        //     height: 20.h,
        //     thickness: 2.h,
        //   ),
        //    MySwitchListTile(
        //     text: context.localizations.guarantee,
        //   ),
        //   SizedBox(
        //     height: 12.h,
        //   ),
        //   AdButton(
        //     onPressed: () {
        //       showModalBottomSheet<void>(
        //         backgroundColor: Colors.white,
        //         isScrollControlled: false,
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.only(
        //           topLeft: Radius.circular(20.r),
        //           topRight: Radius.circular(20.r),
        //         )),
        //         context: context,
        //         builder: (BuildContext context) {
        //           return Padding(
        //             padding:
        //                 EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               crossAxisAlignment: CrossAxisAlignment.center,
        //               children: [
        //                 Align(
        //                     alignment: Alignment.topLeft,
        //                     child: IconButton(
        //                       onPressed: () {},
        //                       icon: Image.asset('assets/images/cancel.png'),
        //                     )),
        //                 CustomSvgImage(
        //                   imageName: AssetsImage.congratulates,
        //                   height: 110.h,
        //                   width: 110.w,
        //                 ),
        //                 SizedBox(
        //                   height: 15.h,
        //                 ),
        //                 TextUtils(
        //                   fontSize: 18.sp,
        //                   fontWeight: FontWeight.w600,
        //                   text: context.localizations.congratulations,
        //                   color: green,
        //                 ),
        //                 SizedBox(
        //                   height: 10.h,
        //                 ),
        //                 TextUtils(
        //                   fontSize: 16.sp,
        //                   fontWeight: FontWeight.w400,
        //                   text: context.localizations.add_car_data_successfully,
        //                   color: mainFontColor,
        //                 ),
        //                 Divider(color: shadeGrey, height: 40.h, thickness: 1.h),
        //                 TextUtils(
        //                   fontSize: 16.sp,
        //                   fontWeight: FontWeight.w400,
        //                   text:
        //                   context.localizations.new_contact_info,
        //                   color: mainFontColor,
        //                 ),
        //                 SizedBox(
        //                   height: 25.h,
        //                 ),
        //                 Row(
        //                   children: [
        //                     Expanded(
        //                         child: AdButton(
        //                       onPressed: () {
        //                         Navigator.pushNamed(
        //                             context, '/contact_info_screen');
        //                       },
        //                       text: context.localizations.yes,
        //                     )),
        //                     SizedBox(
        //                       width: 16.w,
        //                     ),
        //                     Expanded(
        //                       child: ElevatedButton(
        //                         onPressed: () {
        //                           Navigator.pop(context);
        //                         },
        //                         style: ElevatedButton.styleFrom(
        //                           minimumSize: Size(360.w, 50.h),
        //                           backgroundColor: Colors.white,
        //                           elevation: 0,
        //                           shape: RoundedRectangleBorder(
        //                             borderRadius: BorderRadius.circular(12.r),
        //                             side: BorderSide(
        //                               color: mainColor,
        //                               width: 1.w,
        //                             ),
        //                           ),
        //                         ),
        //                         child: TextUtils(
        //                           fontSize: 14.sp,
        //                           fontWeight: FontWeight.w500,
        //                           text:context.localizations.no,
        //                           color: mainColor,
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 )
        //               ],
        //             ),
        //           );
        //         },
        //       );
        //     },
        //     text: context.localizations.next,
        //   ),
        // ],
      ),
    );
  }
}
