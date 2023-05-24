import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_yana_flutter_dev/ui/screens/routes/app_routes.dart';
import 'package:test_yana_flutter_dev/ui/screens/widgets/bottom_nav_bar.dart';
import 'package:test_yana_flutter_dev/ui/screens/widgets/bus_card_widget.dart';
import 'constants/colors_constants.dart';
import 'constants/text_style_widget.dart';


class Search2Screen extends StatefulWidget {
  const Search2Screen({Key? key}) : super(key: key);

  @override
  State<Search2Screen> createState() => _Search2ScreenState();
}

class _Search2ScreenState extends State<Search2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: _appBar(),
      body: Container(
        color: TestColor.greyColor1,
        alignment:  Alignment.topCenter,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 185,
              padding: const EdgeInsets.only(/*left: 24.0, right: 24,*/ top: 52.0),
                            alignment: Alignment.center,
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
                    margin: const EdgeInsets.only(bottom: 30, left: 24.0, right: 24),
                    padding: const EdgeInsets.only(left: 21.0, right: 21, top: 8.0, ),
                    height: 58,
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                        color: TestColor.whiteColor,
                        boxShadow: [
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
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/group.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      SizedBox(
                        width: 100,
                        child: Column(
                         children:  const [
                           Text("All", style: zTextBlack2StyleConst),
                           SizedBox(height: 2,),
                           Text("112", style: zTextBlack1StyleConst,),
                         ],
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Column(
                          children: const [
                            Text("With traveler", style: zTextBlack2StyleConst),
                            SizedBox(height: 2,),
                            Text("105", style: zTextBlack1StyleConst,),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Column(
                          children: const [
                            Text("On the bus", style: zTextBlack2StyleConst),
                            SizedBox(height: 2,),
                            Text("112", style: zTextBlack1StyleConst,),

                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 110,
                        height: 3,
                        color: TestColor.whiteColor,
                      ),
                      Container(
                        width: 110,
                        height: 3,
                        color: TestColor.whiteColor,
                      ),
                      Container(
                        width: 110,
                        height: 3,
                        color: TestColor.greenColor,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                //margin: const EdgeInsets.only(left: 24, right: 24),
                //alignment:  Alignment.topCenter,
                padding:  const EdgeInsets.only(left: 24.0, right: 24,),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 12,
                    itemBuilder: (context, index) => Column(
                      children: const [
                        BusCardWidget(),
                        SizedBox(height: 18,)
                      ],
                    ),

                )),
            )

          ],
        ),

      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

}

