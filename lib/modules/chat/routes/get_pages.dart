import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:haraj_app/modules/chat/auth/login_screen.dart';
import 'package:haraj_app/modules/chat/auth/register_screen.dart';
import 'package:haraj_app/modules/chat/routes/routes_manager.dart';


import '../chat_screen.dart';
import '../custom_chat_screen.dart';
import '../get/bindings/auth/login_binding.dart';
import '../get/bindings/auth/register_binding.dart';


final List<GetPage<dynamic>> getPages = [

  GetPage(
    name: RoutesManager.loginScreen,
    page: () => const LoginScreen(),
    binding: LoginBinding(),
  ),
  GetPage(
    name: RoutesManager.registerScreen,
    page: () => const RegisterScreen(),
    binding: RegisterBinding(),
  ),

  GetPage(
    name: RoutesManager.chatScreen,
    page: () => const ChatScreen(),
  ),
  // GetPage(
  //   name: RoutesManager.messagingScreen,
  //   page: () => const CustomChatScreen(),
  // ),
  // GetPage(
  //   name: RoutesManager.allContactsScreen,
  //   page: () => const AllContactsScreen(),
  // ),

];
