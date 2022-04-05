import 'package:dalell/view/sections/asnan.dart';
import 'package:dalell/view/sections/batna.dart';
import 'package:dalell/view/sections/geldya.dart';
import 'package:dalell/view/sections/msalek.dart';
import 'package:dalell/view/sections/Ezam.dart';
import 'package:dalell/view/sections/anfwozon.dart';
import 'package:dalell/view/sections/atfal.dart';
import 'package:dalell/view/sections/geraha.dart';
import 'package:dalell/view/sections/labs.dart';
import 'package:dalell/view/sections/nesawtawled.dart';
import 'package:dalell/view/sections/ramad.dart';
import 'package:dalell/view/sections/sadrya.dart';
import 'package:dalell/view/sections/saydlyat.dart';
import 'package:dalell/view/sections/alb.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'controller/controller.dart';

class Cust_Container extends StatelessWidget {
  Cust_Container(
      {Key? key,
      this.image,
      this.text,
      this.onTap,
      this.price,
      this.address,
      this.dates,
      this.phone})
      : super(key: key);
  ImageProvider? image;
  String? text;
  String? price;
  String? dates;
  String? address;
  String? phone;

  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap!,
      leading: Image(
        image: image!,
        height: 90,
        width: 90,
      ),
      style: ListTileStyle.list,
      title: Text(
        text!,
        style: GoogleFonts.cairo(fontSize: 17, fontWeight: FontWeight.bold),
        textAlign: TextAlign.end,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            dates!,
            style: GoogleFonts.cairo(
              fontSize: 17,
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            address!,
            style: GoogleFonts.cairo(
              fontSize: 15,
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            price!,
            style: GoogleFonts.cairo(fontSize: 17),
            textAlign: TextAlign.end,
          ),
          MaterialButton(
            minWidth: 200,
            onPressed: () async
            {
              if(await canLaunch(phone!))
              {
                await launch(phone!);
              }
            },
            child: Text(
              'اتصال',
              style: GoogleFonts.cairo(
                fontSize: 17,
                color: Colors.white,
              ),
              textAlign: TextAlign.end,
            ),
            color: Colors.blue.shade300,
          ),
        ],
      ),
    );
  }
}
class Cust_Gest extends StatelessWidget {
  Cust_Gest({Key? key, required this.onChanged, this.text, this.imago})
      : super(key: key);
  VoidCallback onChanged;
  String? text;
  ImageProvider? imago;
  int? width;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onChanged,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100,
          height:  120,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 2,
                blurRadius: 3,
              ),
            ],
          ),
          child: Stack(children: [
            Column(
              children: [
                Container(width: 140, height: 90, child: Image(image: imago!)),
                SizedBox(
                  height: 1,
                ),
                Text(
                  '$text',
                  style: GoogleFonts.cairo(fontSize: 15),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
class Cust_ForLab extends StatelessWidget {
  Cust_ForLab(
      {Key? key,
      this.image,
      this.text,
      this.onTap,
      this.address,
      this.dates,
      this.phone})
      : super(key: key);
  ImageProvider? image;
  String? text;
  String? dates;
  String? address;
  String? phone;

  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(
        image: image!,
      ),
      title: Text(
        text!,
        style: GoogleFonts.cairo(fontSize: 17, fontWeight: FontWeight.bold),
        textAlign: TextAlign.end,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            dates!,
            style: GoogleFonts.cairo(
              fontSize: 17,
            ),
            textAlign: TextAlign.end,
          ),
          Text(
            address!,
            style: GoogleFonts.cairo(
              fontSize: 17,
            ),
            textAlign: TextAlign.end,
          ),
          MaterialButton(
            minWidth: 200,
            onPressed: () async
            {
              if(await canLaunch(phone!))
              {
               await launch(phone!);
              }
            },
              child: Text(
            'اتصال',
            style: GoogleFonts.cairo(
              fontSize: 17,
              color: Colors.white,
            ),
            textAlign: TextAlign.end,
          ),
            color: Colors.blue.shade300,
          ),

        ],
      ),
      onTap: onTap!,
    );
  }
}
class Cust_Column extends StatelessWidget {
   Cust_Column({Key? key,required this.text}) : super(key: key);
String text ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(right: 10),
          child: Text('العدد',style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),),
        ),
        Container(
          padding: EdgeInsets.only(right: 10),
          child: Text(text,style: GoogleFonts.cairo(color: Colors.black,fontWeight: FontWeight.bold),),
        ),
      ],
    );
  }
}
class Cust_ContainerDetail extends StatelessWidget {
  Cust_ContainerDetail(
      {Key? key,
        this.text,
        this.price,
        this.address,
        this.dates,
        this.phone})
      : super(key: key);
  String? text;
  String? price;
  String? dates;
  String? address;
  String? phone;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          text!,
          style: GoogleFonts.cairo(fontSize: 17, fontWeight: FontWeight.bold),
          textAlign: TextAlign.end,
        ),
        Text(
          dates!,
          style: GoogleFonts.cairo(
            fontSize: 17,
          ),
          textAlign: TextAlign.end,
        ),
        Text(
          address!,
          style: GoogleFonts.cairo(
            fontSize: 15,
          ),
          textAlign: TextAlign.end,
        ),
        Text(
          price!,
          style: GoogleFonts.cairo(fontSize: 17),
          textAlign: TextAlign.end,
        ),
        MaterialButton(
          minWidth: 200,
          onPressed: () async
          {
            if(await canLaunch(phone!))
            {
              await launch(phone!);
            }
          },
          child: Text(
            'اتصال',
            style: GoogleFonts.cairo(
              fontSize: 17,
              color: Colors.white,
            ),
            textAlign: TextAlign.end,
          ),
          color: Colors.blue.shade300,
        ),
      ],
    );
  }
}
class ForMe extends StatelessWidget {
  const ForMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
class TextHomePage extends StatelessWidget {
   TextHomePage({Key? key,required this.text,required this.num}) : super(key: key);
String? text;
double? num;
  @override
  Widget build(BuildContext context) {
    return  Text(text!, style: GoogleFonts.cairo(
          color: Colors.red.shade400,
          fontSize: num!,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
class Elan extends StatelessWidget {
  const Elan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      width: double.infinity,
      child: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return FirebaseAnimatedList(query: controller.dbref, itemBuilder: (BuildContext context , DataSnapshot snapshot , Animation animation , int index){
              return Text(snapshot.value.toString(),
                style: GoogleFonts.cairo(fontSize: 15, color: Colors.red),
                textAlign: TextAlign.end,);
            });
            // Text(
            //  ' ${controller.getElan()}',
            //   style: GoogleFonts.cairo(fontSize: 15, color: Colors.red),
            //   textAlign: TextAlign.end,
            // );
          }
      ),
    );
  }
}
class CircleAvatarHomePage extends StatelessWidget {
  const CircleAvatarHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60,
      backgroundColor: Colors.white,
      child: Image(
        image: AssetImage('images/d3.png'),
      ),
    );
  }
}
class SectionHomePage extends StatelessWidget {
  const SectionHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            SizedBox(height: 60,),
          ],
        ),
        Positioned(
          bottom: 7,
          child: ForMe(),
        ),
      ],
    );
  }
}







