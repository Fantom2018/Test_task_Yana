import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_yana_flutter_dev/ui/screens/routes/page_routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Yana',
      theme: ThemeData().copyWith(
          primaryColor: Colors.black,
          backgroundColor: Colors.white
      ),
      defaultTransition: Transition.cupertino,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      transitionDuration: const Duration(milliseconds: 130),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      supportedLocales: const [ Locale('en')],
    );
  }
}
