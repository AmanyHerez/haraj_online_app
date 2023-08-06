import 'package:flutter/material.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custom_divider.dart';
import 'package:haraj_app/shared/components/custom_elevated_button.dart';
import 'package:haraj_app/shared/components/custom_radio_button.dart';
import 'package:haraj_app/shared/components/custome_image.dart';
import 'package:haraj_app/shared/font_manager.dart';
import 'package:haraj_app/shared/style/color_manager.dart';

class TypeAccountScreen extends StatefulWidget {
   TypeAccountScreen({Key? key}) : super(key: key);

  @override
  State<TypeAccountScreen> createState() => _TypeAccountScreenState();
}

class _TypeAccountScreenState extends State<TypeAccountScreen> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(
                  flex: 3,
                ),
                Container(
                  width: 52,
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppColor.greyContainerBottomSheet,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: CustomSvgImage(imageName: AssetsImage.cancel)),
                ),
              ],
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
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Row(
                children: [
                  Text(
                    'حدد نوع الحساب',
                    style: TextStyle(
                        color: AppColor.black,
                        fontFamily: FontConstants.fontFamily),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: AppColor.dividerGreyColor,
              height: 1,
              thickness: 1,
            ),
            ///////////////////////////////////////////////
            //TypeAcountSellerWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                      imageName: AssetsImage.sellerIcon,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'حساب بائع',
                        style: TextStyle(
                            color: AppColor.black,
                            fontFamily: FontConstants.fontFamily),
                      ),
                      Text(
                        'يستوجب دفع رسوم اشتراك',
                        style: TextStyle(
                          color: AppColor.grey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  CustomRadioButton(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() => _value = value!);
                        print(_value);
                      }),

                ],
              ),
            ),
            CustomeDivider(),
            /////////////////////////////////////////////////
            //TypeAcountBuyerWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                      imageName: AssetsImage.buyerIcon,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'حساب مشتري',
                        style: TextStyle(
                            color: AppColor.black,
                            fontFamily: FontConstants.fontFamily),
                      ),
                      Text(
                        'لا يستوجب دفع رسوم اشتراك',
                        style: TextStyle(
                          color: AppColor.grey,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  CustomRadioButton(
                      value:2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() => _value = value!);
                        print(_value);
                      }),
                  // Container(
                  //   width: 16,
                  //   height: 16,
                  //   alignment: Alignment.center,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(25),
                  //     color: AppColor.lightGrey,
                  //   ),
                  //   child: Icon(Icons.check_sharp,color: Colors.black,size: 12,),
                  // ),
                ],
              ),
            ),
            ////////////////////////////////////////
            CustomeDivider(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomElevatedButton(
                text: 'انشاء',
                onPressed: () {},
                bgColor: AppColor.primary,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class TypeAcountSellerWidget extends StatefulWidget {


  @override
  State<TypeAcountSellerWidget> createState() => _TypeAcountSellerWidgetState();
}

class _TypeAcountSellerWidgetState extends State<TypeAcountSellerWidget> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
              imageName: AssetsImage.sellerIcon,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'حساب بائع',
                style: TextStyle(
                    color: AppColor.black,
                    fontFamily: FontConstants.fontFamily),
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
          CustomRadioButton(
              value: 1,
              groupValue: _value,
              onChanged: (value) {
                setState(() => _value = value!);
                print(_value);
              }),

        ],
      ),
    );
  }
}





class TypeAcountBuyerWidget extends StatefulWidget {


  @override
  State<TypeAcountBuyerWidget> createState() => _TypeAcountBuyerWidgetState();
}

class _TypeAcountBuyerWidgetState extends State<TypeAcountBuyerWidget> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
              imageName: AssetsImage.buyerIcon,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'حساب مشتري',
                style: TextStyle(
                    color: AppColor.black,
                    fontFamily: FontConstants.fontFamily),
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
          CustomRadioButton(
              value:2,
              groupValue: _value,
              onChanged: (value) {
                setState(() => _value = value!);
                print(_value);
              }),
          // Container(
          //   width: 16,
          //   height: 16,
          //   alignment: Alignment.center,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(25),
          //     color: AppColor.lightGrey,
          //   ),
          //   child: Icon(Icons.check_sharp,color: Colors.black,size: 12,),
          // ),
        ],
      ),
    );
  }
}

// class TypeAcountWidget extends StatefulWidget {
//   @override
//   State<TypeAcountWidget> createState() => _TypeAcountWidgetState();
// }
//
// class _TypeAcountWidgetState extends State<TypeAcountWidget> {
//   int _value = 0;
//   String title;
//   String nameIcon;
//
//   _TypeAcountWidgetState(this.title, this.nameIcon);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//       child: Row(
//         children: [
//           Container(
//             width: 40,
//             height: 40,
//             padding: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(50),
//                 border: Border.all(
//                   color: AppColor.lightGrey,
//                 )),
//             child: CustomSvgImage(
//               imageName: nameIcon,
//             ),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 title,
//                 style: TextStyle(
//                     color: AppColor.black,
//                     fontFamily: FontConstants.fontFamily),
//               ),
//               Text(
//                 'يستجوب دفع رسوم اشتراك ',
//                 style: TextStyle(
//                   color: AppColor.grey,
//                 ),
//               ),
//             ],
//           ),
//           Spacer(),
//           CustomRadioButton(
//               value: 1,
//               groupValue: _value,
//               onChanged: (value) {
//                 setState(() => _value = value!);
//                 print(_value);
//               }),
//           // Container(
//           //   width: 16,
//           //   height: 16,
//           //   alignment: Alignment.center,
//           //   decoration: BoxDecoration(
//           //     borderRadius: BorderRadius.circular(25),
//           //     color: AppColor.lightGrey,
//           //   ),
//           //   child: Icon(Icons.check_sharp,color: Colors.black,size: 12,),
//           // ),
//         ],
//       ),
//     );
//   }
// }

// Widget typeAcountWidget({required String title, required String nameIcon}) {
//   int _value = 0;
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//     child: Row(
//       children: [
//         Container(
//           width: 40,
//           height: 40,
//           padding: EdgeInsets.all(8),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(50),
//               border: Border.all(
//                 color: AppColor.lightGrey,
//               )),
//           child: CustomSvgImage(
//             imageName: nameIcon,
//           ),
//         ),
//         SizedBox(
//           width: 10,
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                   color: AppColor.black, fontFamily: FontConstants.fontFamily),
//             ),
//             Text(
//               'يستجوب دفع رسوم اشتراك ',
//               style: TextStyle(
//                 color: AppColor.grey,
//               ),
//             ),
//           ],
//         ),
//         Spacer(),
//         CustomRadioButton(value: 1, groupValue: _value, onChanged: (value){
//           setState(() => _value = value!);
//           print(_value);
//         }),
//         // Container(
//         //   width: 16,
//         //   height: 16,
//         //   alignment: Alignment.center,
//         //   decoration: BoxDecoration(
//         //     borderRadius: BorderRadius.circular(25),
//         //     color: AppColor.lightGrey,
//         //   ),
//         //   child: Icon(Icons.check_sharp,color: Colors.black,size: 12,),
//         // ),
//       ],
//     ),
//   );
// }
