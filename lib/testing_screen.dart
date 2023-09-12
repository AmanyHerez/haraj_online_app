import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haraj_app/app/test_register/cubit/auth_cubit/auth_cubit.dart';
import 'package:haraj_app/app/test_register/cubit/verify_cubit/verify_cubit.dart';
import 'package:haraj_app/app/test_register/data/dio_helper.dart';

import 'app/test_register/cubit/login_cubit/login_cubit.dart';

class TestingScreen extends StatelessWidget {
  const TestingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            BlocProvider.of<LoginCubit>(context).deviceName,
            style: TextStyle(color: Colors.black),
          ),
          Center(
            child: ElevatedButton(
              child: Text('Test function'),
              onPressed: ()async {
                BlocProvider.of<AuthCubit>(context).profile();
               // DioHelper.dioHelper.profile();
              },
            ),
          ),
        ],
      ),
    );
  }
}
