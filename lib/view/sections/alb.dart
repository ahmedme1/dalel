import 'package:dalell/component.dart';
import 'package:dalell/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Alb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AlbController>(
      init: AlbController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: [
              Cust_Column(text: '${controller.alb.length}'),
            ],
            centerTitle: true,
            title: Text('القلب',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                    text:'${controller.alb[index]['name']}',
                    price:'سعر الكشف : ${controller.alb[index]['price']}  ',
                    address:'العنوان : ${controller.alb[index]['address']}',
                    dates:'مواعيد العمل : ${controller.alb[index]['dates']}',
                    phone:'tel: ${controller.alb[index]['phone']}',
                    image: AssetImage('images/d1.png'),
                    onTap: (){
                    });
              },
              itemCount: controller.alb.length,
              physics: BouncingScrollPhysics(),
            ),
          ),
        );
      }
    );
  }
}
