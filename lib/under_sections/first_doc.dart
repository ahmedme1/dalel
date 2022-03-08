import 'package:dalell/sections/nesawtawled.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class D1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded,
            color: Colors.black,

          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 700,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey[300],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text('رقم الموبايل : 01003705602', style: GoogleFonts.cairo(fontSize: 25),),
                SizedBox(
                  height: 30,
                ),
                Text('سعر الكشف : 90 جنيه', style: GoogleFonts.cairo(fontSize: 25),),
                SizedBox(
                  height: 30,
                ),
                Text('مواعيد العمل  : 10 ص الى 5 م', style: GoogleFonts.cairo(fontSize: 25),),
                SizedBox(
                  height: 30,
                ),
                Text('العنوان : بجانب الجمعيه الشرعيه', style: GoogleFonts.cairo(fontSize: 25),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
