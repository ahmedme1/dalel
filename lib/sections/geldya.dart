import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Geldya extends StatefulWidget {
   Geldya({Key? key}) : super(key: key);

  @override
  State<Geldya> createState() => _GeldyaState();
}

class _GeldyaState extends State<Geldya> {
  List geldya = [];
  CollectionReference geldyaDoc = FirebaseFirestore.instance.collection('geldya');
  getData()async
  {
    var responseBody = await geldyaDoc.get();
    responseBody.docs.forEach((element) {
      setState(() {
        geldya.add(element.data());
      });
      print(geldya);
    });
  }
  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('الجلدية',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded,
            color: Colors.black,

          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child:ListView.builder(
          itemBuilder: (context,index)
          {
            return Cust_Container(
                text:'${geldya[index]['name']}',
                price:'سعر الكشف : ${geldya[index]['price']} جنيه ',
                address:'العنوان : ${geldya[index]['address']}',
                dates:'مواعيد العمل : ${geldya[index]['dates']}',
                phone:'رقم الموبايل : ${geldya[index]['phone']}',
                image: AssetImage('images/d1.png'),
                onTap: (){
                });
          },
          itemCount: geldya.length,

          physics: BouncingScrollPhysics(),




        ),
      ),


    );
  }
}
