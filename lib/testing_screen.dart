import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'app/auth_cubit/cubit/auth_cubit/auth_cubit.dart';
import 'app/auth_cubit/cubit/login_cubit/login_cubit.dart';
import 'app/posts_cubit/post_cubit.dart';
import 'app/store_cubit/store_cubit.dart';

class TestingScreen extends StatefulWidget {
  @override
  State<TestingScreen> createState() => _TestingScreenState();
}

class _TestingScreenState extends State<TestingScreen> {
  XFile? pickedFile1;
  XFile? pickedFile2;
  XFile? pickedFile3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
            visible: pickedFile1 != null &&
                pickedFile2 != null &&
                pickedFile3 != null,
            child: pickedFile1 != null &&
                    pickedFile2 != null &&
                    pickedFile3 != null
                ? Row(
                    children: [
                      Image.file(
                        File(pickedFile1!.path),
                        height: 100,
                        width: 100,
                      ),
                      Image.file(
                        File(pickedFile2!.path),
                        height: 100,
                        width: 100,
                      ),
                      Image.file(
                        File(pickedFile3!.path),
                        height: 100,
                        width: 100,
                      ),
                    ],
                  )
                : Container(
                    width: 20,
                    height: 20,
                    color: Colors.red,
                  ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () async {
                  final picker = ImagePicker();
                  pickedFile1 =
                      await picker.pickImage(source: ImageSource.gallery);
                },
                child: Text('avater'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final picker = ImagePicker();
                  pickedFile2 =
                      await picker.pickImage(source: ImageSource.gallery);
                },
                child: Text('gallery 1'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final picker = ImagePicker();
                  pickedFile3 =
                      await picker.pickImage(source: ImageSource.gallery);
                },
                child: Text('gallery 2'),
              ),
            ],
          ),
          Center(
            // child: ElevatedButton(
            //   child: Text('Test function'),
            //   onPressed: () async {
            //     // final picker = ImagePicker();
            //     // pickedFile1 =
            //     //     await picker.pickImage(source: ImageSource.gallery);
            //     await StoreCubit.get(context)
            //         .updateStore(pickedFile1, pickedFile2, pickedFile3);
            //     setState(() {});
            //     // print('beging excute function');
            //     // await BlocProvider.of<StoreCubit>(context).getStore();
            //     // print('finsh excute function');
            //     // DioHelper.dioHelper.profile();
            //   },
            // ),
          ),
          ElevatedButton(
              onPressed: () async {
                await StoreCubit.get(context).getStorePost();
              },
              child: Text('Testing function')),
          Visibility(
            visible: pickedFile1 != null &&
                pickedFile2 != null,
            child: pickedFile1 != null &&
                pickedFile2 != null
                ? Row(
              children: [
                Image.file(
                  File(pickedFile1!.path),
                  height: 100,
                  width: 100,
                ),
                Image.file(
                  File(pickedFile2!.path),
                  height: 100,
                  width: 100,
                ),

              ],
            )
                : Container(
              width: 20,
              height: 20,
              color: Colors.red,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () async {
                  final picker = ImagePicker();
                  pickedFile1 =
                  await picker.pickImage(source: ImageSource.gallery);
                },
                child: Text('gallery1'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final picker = ImagePicker();
                  pickedFile2 =
                  await picker.pickImage(source: ImageSource.gallery);
                },
                child: Text('gallery 2'),
              ),

            ],
          ),
          Center(
            child: ElevatedButton(
              child: Text('Test function Favorites '),
              onPressed: () async {
                // final picker = ImagePicker();
                // pickedFile1 =
                //     await picker.pickImage(source: ImageSource.gallery);
                await PostsCubit.get(context)
                    .Favorites(pickedFile1, pickedFile2,);
                setState(() {});
                // print('beging excute function');
                // await BlocProvider.of<StoreCubit>(context).getStore();
                // print('finsh excute function');
                // DioHelper.dioHelper.profile();
              },
            ),
          ),
        ],
      ),
    );
  }
}
