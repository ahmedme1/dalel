import 'package:dalell/component.dart';
import 'package:dalell/controller/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

class Batna extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BatnaController>(
      init: BatnaController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              Cust_Column(text: '${controller.batna.length}'),
            ],
            centerTitle: true,
            title: Text('الباطنة',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              onPressed: ()
              {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios_rounded,
                color: Colors.black,

              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListView.builder(
              itemBuilder: (context,index)
              {
                return Cust_Container(
                    text:'${controller.batna[index]['name']}',
                    price:'سعر الكشف : ${controller.batna[index]['price']}  ',
                    address:'العنوان : ${controller.batna[index]['address']}',
                    dates:'مواعيد العمل : ${controller.batna[index]['dates']}',
                    phone:'tel: ${controller.batna[index]['phone']}',
                    image: AssetImage('images/d1.png'),
                    onTap: (){
                    });
              },
              itemCount: controller.batna.length,

              physics: BouncingScrollPhysics(),




            ),
          ),


        );
      }
    );
  }
}
