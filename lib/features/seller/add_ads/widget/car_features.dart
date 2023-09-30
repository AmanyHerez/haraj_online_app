import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_sliders/sliders.dart';



class CarFeatures extends StatefulWidget {
  const CarFeatures({super.key});

  @override
  State<CarFeatures> createState() => _CarFeaturesState();
}

class _CarFeaturesState extends State<CarFeatures> {
  String carrierType = 'automatic';
  String sellerType = 'agent';
  String features = 'جر أمامي';
  double _seatsNumber = 20;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text('page 5'),
          ]
        // children: [
        //   TextUtils(
        //     fontSize: 14.sp,
        //     fontWeight: FontWeight.w400,
        //     text: context.localizations.carrier_type,
        //     color: mainFontColor,
        //   ),
        //   Row(
        //     children: [
        //       AdElevatedButton(
        //         isPressed: carrierType == 'automatic' ? true : false,
        //         onPressed: () {
        //           setState(() {
        //             carrierType = 'automatic';
        //           });
        //         },
        //         text: context.localizations.automatic,
        //       ),
        //       SizedBox(
        //         width: 15.w,
        //       ),
        //       AdElevatedButton(
        //         isPressed: carrierType == 'manual' ? true : false,
        //         onPressed: () {
        //           setState(() {
        //             carrierType = 'manual';
        //           });
        //         },
        //         text: context.localizations.manual,
        //       ),
        //     ],
        //   ),
        //   Divider(color: shadeGrey, height: 15.h, thickness: 1.h),
        //   TextUtils(
        //     fontSize: 14.sp,
        //     fontWeight: FontWeight.w400,
        //     text: context.localizations.seller_type,
        //     color: mainFontColor,
        //   ),
        //   Row(
        //     children: [
        //       AdElevatedButton(
        //         isPressed: sellerType == 'agent' ? true : false,
        //         onPressed: () {
        //           setState(() {
        //             sellerType = 'agent';
        //           });
        //         },
        //         text: context.localizations.agent,
        //       ),
        //       SizedBox(
        //         width: 15.w,
        //       ),
        //       AdElevatedButton(
        //         isPressed: sellerType == context.localizations.car_owner
        //             ? true
        //             : false,
        //         onPressed: () {
        //           setState(() {
        //             sellerType = context.localizations.car_owner;
        //           });
        //         },
        //         text: context.localizations.car_owner,
        //       ),
        //     ],
        //   ),
        //   Divider(color: shadeGrey, height: 15.h, thickness: 1.h),
        //   TextUtils(
        //     fontSize: 14.sp,
        //     fontWeight: FontWeight.w400,
        //     text: context.localizations.technical_features,
        //     color: mainFontColor,
        //   ),
        //   Row(
        //     children: [
        //       AdElevatedButton(
        //         isPressed:
        //             features == context.localizations.front_drag ? true : false,
        //         onPressed: () {
        //           setState(() {
        //             features = context.localizations.front_drag;
        //           });
        //         },
        //         text: context.localizations.front_drag,
        //       ),
        //       SizedBox(
        //         width: 15.w,
        //       ),
        //       AdElevatedButton(
        //         isPressed:
        //             features == context.localizations.rear_drag ? true : false,
        //         onPressed: () {
        //           setState(() {
        //             features = context.localizations.rear_drag;
        //           });
        //         },
        //         text: context.localizations.rear_drag,
        //       ),
        //       SizedBox(
        //         width: 15.w,
        //       ),
        //       AdElevatedButton(
        //         isPressed: features == context.localizations.four_wheel_drive
        //             ? true
        //             : false,
        //         onPressed: () {
        //           setState(() {
        //             features = context.localizations.four_wheel_drive;
        //           });
        //         },
        //         text: context.localizations.four_wheel_drive,
        //       ),
        //     ],
        //   ),
        //   Divider(color: shadeGrey, height: 15.h, thickness: 1.h),
        //   TextUtils(
        //     fontSize: 14.sp,
        //     fontWeight: FontWeight.w400,
        //     text: context.localizations.seats_number,
        //     color: mainFontColor,
        //   ),
        //   SfSlider(
        //     thumbIcon: Image.asset('assets/images/thumb.png'),
        //     min: 2,
        //     max: 50,
        //     value: _seatsNumber,
        //     interval: 2,
        //     activeColor: mainColor,
        //     minorTicksPerInterval: 1,
        //     onChanged: (dynamic value) {
        //       setState(() {
        //         _seatsNumber = value;
        //       });
        //     },
        //   ),
        //   Divider(color: shadeGrey, height: 15.h, thickness: 1.h),
        //   TextUtils(
        //     fontSize: 14.sp,
        //     fontWeight: FontWeight.w400,
        //     text: context.localizations.cylinders_number,
        //     color: mainFontColor,
        //   ),
        //   SfSlider(
        //     thumbIcon: Image.asset('assets/images/thumb.png'),
        //     min: 2,
        //     max: 50,
        //     value: _seatsNumber,
        //     interval: 2,
        //     activeColor: mainColor,
        //     minorTicksPerInterval: 1,
        //     onChanged: (dynamic value) {
        //       setState(() {
        //         _seatsNumber = value;
        //       });
        //     },
        //   ),
        //   Divider(color: shadeGrey, height: 15.h, thickness: 1.h),
        //   TextUtils(
        //     fontSize: 14.sp,
        //     fontWeight: FontWeight.w400,
        //     text: context.localizations.doors_number,
        //     color: mainFontColor,
        //   ),
        //   SfSlider(
        //     thumbIcon: Image.asset('assets/images/thumb.png'),
        //     min: 2,
        //     max: 50,
        //     value: _seatsNumber,
        //     interval: 2,
        //     activeColor: mainColor,
        //     minorTicksPerInterval: 1,
        //     onChanged: (dynamic value) {
        //       setState(() {
        //         _seatsNumber = value;
        //       });
        //     },
        //   ),
        //   Divider(color: shadeGrey, height: 15.h, thickness: 1.h),
        //   AdButton(
        //     onPressed: () {},
        //     text: context.localizations.next,
        //   )
        // ],
      ),
    );
  }
}
