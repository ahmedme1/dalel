import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sadrya extends StatefulWidget {
  Sadrya({Key? key}) : super(key: key);

  @override
  State<Sadrya> createState() => _SadryaState();
}

class _SadryaState extends State<Sadrya> {
  List sadrya = [];
  CollectionReference sadryaDoc = FirebaseFirestore.instance.collection('sadrya');
  getData()async
  {
    var responseBody = await sadryaDoc.get();
    responseBody.docs.forEach((element) {
      setState(() {
        sadrya.add(element.data());
      });
      print(sadrya);
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
        title: Text('الصدرية',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
        child: ListView.builder(
          itemBuilder: (context,index)
          {
            return Cust_Container(
                text:'${sadrya[index]['name']}',
                price:'سعر الكشف : ${sadrya[index]['price']} جنيه ',
                address:'العنوان : ${sadrya[index]['address']}',
                dates:'مواعيد العمل : ${sadrya[index]['dates']}',
                phone:'رقم الموبايل : ${sadrya[index]['phone']}',
                image: AssetImage('images/d1.png'),
                onTap: (){
                });
          },
          itemCount: sadrya.length,

          physics: BouncingScrollPhysics(),




        ),
      ),


    );
  }
}
