import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_yana_flutter_dev/ui/screens/routes/app_routes.dart';


import 'constants/colors_constants.dart';
import 'constants/text_style_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  _appBar(),
    body: Container(
      alignment:  Alignment.topCenter,
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

        ],
      ),
    )
    );
  }
  _appBar (){
    return AppBar(
      actions: [
        IconButton(onPressed: (){  Get.toNamed(Routes.search2Screen);
        }, icon: const Icon(Icons.search, size: 24, color: TestColor.greyColor2)),
        const SizedBox(width: 10,)
      ],
      backgroundColor: TestColor.blackColor,
      title: const Text('"Test App Yana"',   style: zTextGreenStyleConst),
      centerTitle: true,
      leading:
      IconButton(onPressed: (){
        Get.toNamed(Routes.myDrive2Screen);
      }, icon: const Icon(Icons.pin_drop_outlined, size: 26, color: TestColor.greyColor2)),

    );
  }
}
