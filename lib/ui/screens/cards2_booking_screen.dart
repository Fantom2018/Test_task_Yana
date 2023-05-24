import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_yana_flutter_dev/ui/screens/routes/app_routes.dart';
import 'package:test_yana_flutter_dev/ui/screens/widgets/bottom_nav_bar.dart';

import 'constants/colors_constants.dart';
import 'constants/text_style_widget.dart';


class Cards2Screen extends StatefulWidget {
  const Cards2Screen({Key? key}) : super(key: key);

  @override
  State<Cards2Screen> createState() => _Cards2ScreenState();
}

class _Cards2ScreenState extends State<Cards2Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: _appBar(),
          body: Container(
              alignment:  Alignment.topCenter,
              color: TestColor.greyColor1,
              padding: const EdgeInsets.only(left: 10.0, right: 10, top: 15.0),
              child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 30, left: 24.0, right: 24),
                          padding: const EdgeInsets.only(left: 21.0, right: 21, top: 8.0, ),
                          height: 58,
                          alignment: Alignment.centerLeft,

                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                              color: TestColor.whiteColor,
                              boxShadow: const [
                                BoxShadow(
                                    blurStyle: BlurStyle.outer,
                                    color: Color.fromRGBO(26, 42, 97, 0.06),
                                    blurRadius: 45.0,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0.1),
                              ]
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    IconButton(onPressed: (){
                                      Get.toNamed(Routes.mainScreen);
                                    }, icon: const Icon(Icons.arrow_back_ios, size: 11, color: TestColor.greenColor,)),
                                    const SizedBox(width: 20),
                                    SizedBox(
                                      // alignment: Alignment.centerLeft,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:  [
                                          const Text('Kazan - Nizhnekamsk', style: zTextBlack1StyleConst,),
                                          const SizedBox(height: 8,),
                                          Row(
                                            children: const [
                                              Text('14th May 2023,', style: zTextBlack2StyleConst,),
                                              SizedBox(width: 13),
                                              Text('1 passenger', style: zTextBlack2StyleConst,),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 24,
                                height: 24,

                              )
                            ],
                          ),
                        ),

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

      backgroundColor: TestColor.whiteColor,
      title: const Text('Бронирование',   style: zTextBlackAppStyleConst),
      //centerTitle: true,
      leading:
      IconButton(onPressed: (){
        Get.toNamed(Routes.mainScreen);
      }, icon: const Icon(Icons.arrow_back_ios, size: 16, color: TestColor.blackColor3)),

    );
  }
}
