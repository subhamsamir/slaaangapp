import 'package:shivam_s_application4/presentation/welcome_screen/welcome_screen.dart';
import 'package:shivam_s_application4/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:shivam_s_application4/presentation/login_screen/login_screen.dart';
import 'package:shivam_s_application4/presentation/login_screen/binding/login_binding.dart';
import 'package:shivam_s_application4/presentation/signup_screen/signup_screen.dart';
import 'package:shivam_s_application4/presentation/signup_screen/binding/signup_binding.dart';
import 'package:shivam_s_application4/presentation/received_messsages_screen/received_messsages_screen.dart';
import 'package:shivam_s_application4/presentation/received_messsages_screen/binding/received_messsages_binding.dart';
import 'package:shivam_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:shivam_s_application4/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String receivedMesssagesScreen = '/received_messsages_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: receivedMesssagesScreen,
      page: () => ReceivedMesssagesScreen(),
      bindings: [
        ReceivedMesssagesBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    )
  ];
}
