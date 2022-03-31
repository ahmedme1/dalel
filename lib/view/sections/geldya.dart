import 'package:dalell/component.dart';
import 'package:dalell/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

class Geldya extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GeldyaController>(
      init: GeldyaController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              Cust_Column(text: '${controller.geldya.length}'),
            ],
            centerTitle: true,
            title: Text('الجلدية',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                    text:'${controller.geldya[index]['name']}',
                    price:'سعر الكشف : ${controller.geldya[index]['price']}',
                    address:'العنوان : ${controller.geldya[index]['address']}',
                    dates:'مواعيد العمل : ${controller.geldya[index]['dates']}',
                    phone:'tel: ${controller.geldya[index]['phone']}',
                    image: AssetImage('images/d1.png'),
                    onTap: (){
                    });
              },
              itemCount: controller.geldya.length,

              physics: BouncingScrollPhysics(),




            ),
          ),


        );
      }
    );
  }
}
