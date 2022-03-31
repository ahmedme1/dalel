import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:dalell/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class Labs extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LabsController>(
      init: LabsController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              Cust_Column(text: '${controller.labs.length}'),
            ],
            centerTitle: true,
            title: Text('المعامل',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                return Cust_ForLab(
                    text:'${controller.labs[index]['name']}',
                    address:'العنوان : ${controller.labs[index]['address']}',
                    dates:'مواعيد العمل : ${controller.labs[index]['dates']}',
                    phone:'tel: ${controller.labs[index]['phone']}',
                    image: AssetImage('images/d15.png'),
                    onTap: (){
                    });
              },
              itemCount: controller.labs.length,

              physics: BouncingScrollPhysics(),




            ),
          ),


        );
      }
    );
  }
}
