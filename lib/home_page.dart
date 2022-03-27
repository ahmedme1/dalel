import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:dalell/controller/controller.dart';
import 'package:dalell/view/sections/Ezam.dart';
import 'package:dalell/view/sections/anfwozon.dart';
import 'package:dalell/view/sections/asnan.dart';
import 'package:dalell/view/sections/atfal.dart';
import 'package:dalell/view/sections/batna.dart';
import 'package:dalell/view/sections/geldya.dart';
import 'package:dalell/view/sections/geraha.dart';
import 'package:dalell/view/sections/labs.dart';
import 'package:dalell/view/sections/msalek.dart';
import 'package:dalell/view/sections/nesawtawled.dart';
import 'package:dalell/view/sections/ramad.dart';
import 'package:dalell/view/sections/sadrya.dart';
import 'package:dalell/view/sections/saydlyat.dart';
import 'package:dalell/view/sections/alb.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: GetBuilder<HomeController>(
                  init: HomeController(),
                  builder: (controller) {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return Text(
                          '${controller.elanList[index]['body']}',
                          style: GoogleFonts.cairo(fontSize: 15, color: Colors.red),
                          textAlign: TextAlign.end,
                        );
                      },
                      itemCount: controller.elanList.length,
                    );
                  }
                ),
              ),
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: Image(
                  image: AssetImage('images/d3.png'),
                ),
              ),
              Text(
                ' دليل مطرطارس الطبي',
                style: GoogleFonts.cairo(
                    color: Colors.red.shade400,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                'برعاية المركز الخدمي',
                style: GoogleFonts.cairo(
                    color: Colors.red.shade400,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Cust_Gest(
                            onChanged: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Batna()));
                            },
                            text: 'الباطنة',
                            imago: AssetImage(
                              'images/d5.png',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Cust_Gest(
                            onChanged: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Geldya()),
                              );
                            },
                            text: 'الجلدية',
                            imago: AssetImage('images/d4.png'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Cust_Gest(
                            onChanged: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Masalek()),
                              );
                            },
                            text: 'المسالك البولية',
                            imago: AssetImage('images/d8.png'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Cust_Gest(
                            onChanged: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Asnan()),
                              );
                            },
                            text: 'الاسنان',
                            imago: AssetImage('images/d7.png'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Cust_Gest(
                            onChanged: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Nesa()),
                              );
                            },
                            text: 'النسا و التوليد ',
                            imago: AssetImage('images/d10.png'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Cust_Gest(
                            onChanged: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Atfal()),
                              );
                            },
                            text: 'الأطفال ',
                            imago: AssetImage('images/d9.png'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Cust_Gest(
                            onChanged: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Anf_ozon()),
                              );
                            },
                            text: 'أنف و أذن و حنجرة ',
                            imago: AssetImage('images/d11.png'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Cust_Gest(
                            onChanged: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Ezam()),
                              );
                            },
                            text: 'العظام ',
                            imago: AssetImage('images/d12.png'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Cust_Gest(
                            onChanged: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Sadrya()),
                              );
                            },
                            text: 'الصدرية ',
                            imago: AssetImage('images/d13.png'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Cust_Gest(
                            onChanged: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Ramad()),
                              );
                            },
                            text: 'الرمد ',
                            imago: AssetImage('images/d18.png'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Cust_Gest(
                            onChanged: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Alb()),
                              );
                            },
                            text: 'القلب ',
                            imago: AssetImage('images/d19.png'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Cust_Gest(
                            onChanged: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Geraha()),
                              );
                            },
                            text: 'الجراحة العامة  ',
                            imago: AssetImage('images/d20.png'),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Cust_Gest(
                            onChanged: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Saydlyat()),
                              );
                            },
                            text: 'الصيدليات ',
                            imago: AssetImage('images/d17.png'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Cust_Gest(
                            onChanged: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Labs()),
                              );
                            },
                            text: 'المعامل  ',
                            imago: AssetImage('images/d14.png'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Powered by : Ahmed Ibrahim',
                          style: GoogleFonts.cairo(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.red.shade200),
                        ),
                        Text(
                          'Contact : 01003705602',
                          style: GoogleFonts.cairo(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.red.shade200),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),



    );
  }
}