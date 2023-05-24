import 'package:get/get.dart';
import '../cards2_booking_screen.dart';
import '../main_screen.dart';
import '../my_drive_2_screen.dart';
import '../search_2_screen.dart';
import 'app_routes.dart';


class AppPages {
  static const initial = Routes.mainScreen;

  // routes
  static final routes = [
    GetPage(
      name: Routes.mainScreen,
      page: () =>     const MainScreen(),
    ),
    GetPage(
      name: Routes.search2Screen,
      page: () =>     const Search2Screen(),
    ),
    GetPage(
      name: Routes.myDrive2Screen,
      page: () =>      const MyDrive2Screen(),
    ),
    GetPage(
      name: Routes.cards2Screen,
      page: () =>      const Cards2Screen(),
    ),

  ];


}