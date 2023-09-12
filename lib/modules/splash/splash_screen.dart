import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:haraj_app/app/test_register/data/sp_helper.dart';
import 'package:haraj_app/route/routes.dart';
import 'package:haraj_app/shared/assets_manager.dart';
import 'package:haraj_app/shared/components/custome_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, AppRoutes.LOGIN);
    });
    super.initState();
    fetchDeviceInfo();

  }

  Future<void> fetchDeviceInfo() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    try {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      String deviceName = androidInfo.id;
      print("deviceName = ${deviceName}");
      SpHelper.spHelper.SaveDeviceName(deviceName);
      print("deviceName = ${deviceName}");
      // if (Theme.of(context as BuildContext).platform == TargetPlatform.iOS) {
      //   IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      //   deviceName = iosInfo.name;
      // } else {
      //   AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      //   deviceName = androidInfo.model;
      // }
    } catch (e) {
      print("Error getting device info: $e");
    }

    // Pass deviceName to your API
    // await sendDeviceNameToApi(deviceName);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CustomSvgImage(
                imageName: AssetsImage.logo, height: 195, width: 269),
          )
        ],
      ),
    );
  }
}
