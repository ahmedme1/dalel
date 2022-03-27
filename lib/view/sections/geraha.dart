import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:dalell/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

class Geraha extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('الجراحة العامة',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
        child: GetBuilder<GerahaController>(
          init: GerahaController(),
          builder: (controller) {
            return ListView.builder(
              itemBuilder: (context,index)
              {

                return Cust_Container(
                    text:'${controller.geraha[index]['name']}',
                    price:'سعر الكشف : ${controller.geraha[index]['price']}  ',
                    address:'العنوان : ${controller.geraha[index]['address']}',
                    dates:'مواعيد العمل : ${controller.geraha[index]['dates']}',
                    phone:'tel: ${controller.geraha[index]['phone']}',
                    image: AssetImage('images/d1.png'),
                    onTap: (){
                    });
                },
              itemCount: controller.geraha.length,

              physics: BouncingScrollPhysics(),




            );
          }
        ),
      ),


    );
  }
}
