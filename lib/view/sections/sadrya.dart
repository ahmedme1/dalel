import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:dalell/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

class Sadrya extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SadryaController>(
      init: SadryaController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              Cust_Column(text: '${controller.sadrya.length}'),
            ],
            centerTitle: true,
            title: Text('الصدرية',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                    text:'${controller.sadrya[index]['name']}',
                    price:'سعر الكشف : ${controller.sadrya[index]['price']} جنيه ',
                    address:'العنوان : ${controller.sadrya[index]['address']}',
                    dates:'مواعيد العمل : ${controller.sadrya[index]['dates']}',
                    phone:'tel: ${controller.sadrya[index]['phone']}',
                    image: AssetImage('images/d1.png'),
                    onTap: (){
                    });
              },
              itemCount: controller.sadrya.length,

              physics: BouncingScrollPhysics(),




            ),
          ),


        );
      }
    );
  }
}
