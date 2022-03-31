import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:dalell/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class Ramad extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetBuilder<RamadController>(
      init: RamadController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              Cust_Column(text: '${controller.ramad.length}'),
            ],
            centerTitle: true,
            title: Text(' الرمد',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                    text:'${controller.ramad[index]['name']}',
                    price:'سعر الكشف : ${controller.ramad[index]['price']} جنيه ',
                    address:'العنوان : ${controller.ramad[index]['address']}',
                    dates:'مواعيد العمل : ${controller.ramad[index]['dates']}',
                    phone:'tel: ${controller.ramad[index]['phone']}',
                    image: AssetImage('images/d1.png'),
                    onTap: (){
                    });
              },
              itemCount: controller.ramad.length,

              physics: BouncingScrollPhysics(),




            ),
          ),


        );
      }
    );
  }
}
