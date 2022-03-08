import 'package:dalell/component.dart';
import 'package:dalell/sections/Ezam.dart';
import 'package:dalell/sections/anfwozon.dart';
import 'package:dalell/sections/asnan.dart';
import 'package:dalell/sections/atfal.dart';
import 'package:dalell/sections/geldya.dart';
import 'package:dalell/sections/labs.dart';
import 'package:dalell/sections/msalek.dart';
import 'package:dalell/sections/nesawtawled.dart';
import 'package:dalell/sections/ramad.dart';
import 'package:dalell/sections/sadrya.dart';
import 'package:dalell/sections/saydlyat.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sections/batna.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
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
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Cust_Gest(
                          onChanged: ()
                          {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=> Batna()));
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
                          onChanged: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Geldya()),);
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
                          onChanged: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Masalek()),);
                          },
                          text: 'المسالك البولية',
                          imago: AssetImage('images/d8.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Cust_Gest(
                          onChanged: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Asnan()),);
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
                          onChanged: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Nesa()),);
                          },
                          text: 'النسا و التوليد ',
                          imago: AssetImage('images/d10.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Cust_Gest(
                          onChanged: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Atfal()),);
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
                          onChanged: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Anf_ozon()),);
                          },
                          text: 'أنف و أذن و حنجرة ',
                          imago: AssetImage('images/d11.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Cust_Gest(
                          onChanged: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Ezam()),);
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
                          onChanged: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Sadrya()),);
                          },
                          text: 'الصدرية ',
                          imago: AssetImage('images/d13.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Cust_Gest(
                          onChanged: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Labs()),);
                          },
                          text: 'المعامل  ',
                          imago: AssetImage('images/d14.png'),
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
                          onChanged: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Saydlyat()),);
                          },
                          text: 'الصيدليات ',
                          imago: AssetImage('images/d17.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Cust_Gest(
                          onChanged: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Ramad()),);
                          },
                          text: 'الرمد ',
                          imago: AssetImage('images/d18.png'),
                        ),

                      ],
                    ),
                    SizedBox(height: 60,),

                  ],
                ),
                Positioned(
                  bottom: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Powered by : Ahmed Ibrahim',style: GoogleFonts.cairo(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red.shade200),),
                        Text('Contact : 01003705602',style: GoogleFonts.cairo(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red.shade200),),

                      ],
                    ),
                ),
              ],
            ),
          ],
        ),
      ),



    );
  }
}

