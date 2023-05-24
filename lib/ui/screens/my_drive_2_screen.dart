import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_yana_flutter_dev/ui/screens/routes/app_routes.dart';
import 'package:test_yana_flutter_dev/ui/screens/widgets/bottom_nav_bar.dart';

import 'constants/colors_constants.dart';
import 'constants/text_style_widget.dart';


class MyDrive2Screen extends StatefulWidget {
  const MyDrive2Screen({Key? key}) : super(key: key);

  @override
  State<MyDrive2Screen> createState() => _MyDrive2ScreenState();
}

class _MyDrive2ScreenState extends State<MyDrive2Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: _appBar(),
          body: Container(alignment:  Alignment.topCenter,
              padding: const EdgeInsets.only(left: 10.0, right: 10, top: 15.0),
              child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.all(24),
                          child: const Text(
                            'Маршрут'
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 24, left: 24.0, right: 24),
                          height: 353,
                          decoration: const BoxDecoration(
                            //borderRadius: BorderRadius.circular(6),
                              color: TestColor.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                    blurStyle: BlurStyle.solid,
                                    color: Color.fromRGBO(26, 42, 97, 0.06),
                                    blurRadius: 45.0,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0.1),
                              ]
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 24, left: 16.0, right: 16, top: 24),
                                height: 56,
                                color: TestColor.greyColor3,

                              ),
                              Container(),
                              Container(
                                height: 80,
                              ),
                              Container(
                                height: 70,
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 24, left: 16.0, right: 16, top: 24),
                                height: 45,
                                color: TestColor.redColor,
                              ),
                            ],
                          ),
                        )
                      ]
                  )
              )

          ),
          bottomNavigationBar: const BottomNavBar(),
        )
    );

  }

  _appBar (){
    return AppBar(
      actions: [
        IconButton(onPressed: (){ },
            icon: const Icon(CupertinoIcons.minus_circled, size: 24, color: TestColor.greyColor2)),
        const SizedBox(width: 10,)
      ],
      backgroundColor: TestColor.whiteColor,
      title: const Text('Поездка',   style: zTextBlackAppStyleConst),
      //centerTitle: true,
      leading:
      IconButton(onPressed: (){
        Get.toNamed(Routes.mainScreen);
      }, icon: const Icon(Icons.arrow_back_ios, size: 16, color: TestColor.blackColor3)),

    );
  }
}

