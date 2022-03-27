import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:dalell/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class Nesa extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('النساء و التوليد',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
        child: GetBuilder<NesaController>(
          init: NesaController(),
          builder: (controller) {
            return ListView.builder(
              itemBuilder: (context,index)
              {
                return Cust_Container(
                    text:'${controller.nesa[index]['name']}',
                    price:'سعر الكشف : ${controller.nesa[index]['price']} جنيه ',
                    address:'العنوان : ${controller.nesa[index]['address']}',
                    dates:'مواعيد العمل : ${controller.nesa[index]['dates']}',
                    phone:'tel: ${controller.nesa[index]['phone']}',
                    image: AssetImage('images/d1.png'),
                    onTap: (){
                    });
              },
              itemCount: controller.nesa.length,

              physics: BouncingScrollPhysics(),




            );
          }
        ),
      ),


    );
  }
}
