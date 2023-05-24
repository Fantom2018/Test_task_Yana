import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/colors_constants.dart';
import '../constants/text_style_widget.dart';
import '../routes/app_routes.dart';
import 'button_point.dart';

class BusCardWidget extends StatelessWidget {
  const BusCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 18.0, bottom: 8),
      height: 189,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: TestColor.whiteColor,
          boxShadow: const [
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              Container(
                child: Row(
                  children: [
                    const PointButton(),
                    const SizedBox(width: 12),
                    Container(
                      // alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text('Kazan', style: zTextBlack1StyleConst,),
                          const SizedBox(height: 5,),
                          Row(
                            children: const [
                              Text('27th May, 15:00', style: zTextBlack2StyleConst,),
                              SizedBox(width: 13),
                              Text('BusStation', style: zTextBlack2StyleConst,),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const Text('514.80 R', style: zTextGreenStyleConst,)
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              const PointButton(),
              const SizedBox(width: 12),
              Container(
                // alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text('Nizhnekamsk', style: zTextBlack1StyleConst,),
                    const SizedBox(height: 5,),
                    Row(
                      children: const [
                        Text('28th May, 15:00', style: zTextBlack2StyleConst,),
                        SizedBox(width: 13),
                        Text('BusStation', style: zTextBlack2StyleConst,),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 26),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  children: [

                    Container(
                      child: GestureDetector(
                        onDoubleTap: (){
                          Get.toNamed(Routes.cards2Screen);
                        },
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/bus.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 13,),
                    const Text('ООО “БУРЕВЕСТНИК”', style: zTextBlack2StyleConst,)
                  ],
                ),
              ),
              Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/qr_code.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),


        ],
      ),
    );
  }
}
