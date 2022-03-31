import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:dalell/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class Asnan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AsnanController>(
      init: AsnanController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              Cust_Column(text: '${controller.asnan.length}'),
            ],
            centerTitle: true,
            title: Text('الأسنان',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                    text:'${controller.asnan[index]['name']}',
                    price:'سعر الكشف : ${controller.asnan[index]['price']}  ',
                    address:'العنوان : ${controller.asnan[index]['address']}',
                    dates:'مواعيد العمل : ${controller.asnan[index]['dates']}',
                    phone:'tel: ${controller.asnan[index]['phone']}',
                    image: AssetImage('images/d1.png'),
                    onTap: (){
                    });
              },
              itemCount: controller.asnan.length,

              physics: BouncingScrollPhysics(),




            ),
          ),


        );
      }
    );
  }
}
