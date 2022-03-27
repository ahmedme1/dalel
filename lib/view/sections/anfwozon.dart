import 'package:dalell/component.dart';
import 'package:dalell/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class Anf_ozon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('أنف و أذن و حنجرة',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
        child: GetBuilder<AnfController>(
          init: AnfController(),
          builder: (controller){
            return ListView.builder(
              itemBuilder: (context,index)
              {
                return Cust_Container(
                    text:'${controller.anf[index]['name']}',
                    price:'سعر الكشف : ${controller.anf[index]['price']}  ',
                    address:'العنوان : ${controller.anf[index]['address']}',
                    dates:'مواعيد العمل : ${controller.anf[index]['dates']}',
                    phone:'tel: ${controller.anf[index]['phone']}',
                    image: AssetImage('images/d1.png'),
                    onTap: (){
                    });
              },
              itemCount: controller.anf.length,

              physics: BouncingScrollPhysics(),




            );
          },
        ),
      ),


    );
  }
}
