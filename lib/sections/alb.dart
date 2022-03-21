import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alb extends StatefulWidget {
  Alb({Key? key}) : super(key: key);

  @override
  State<Alb> createState() => _AlbState();
}

class _AlbState extends State<Alb> {
  List alb = [];
  CollectionReference albDoc = FirebaseFirestore.instance.collection('alb');
  getData()async
  {
    var responseBody = await albDoc.get();
    responseBody.docs.forEach((element) {
      setState(() {
        alb.add(element.data());
      });
      print(alb);
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
        title: Text('القلب',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                text:'${alb[index]['name']}',
                price:'سعر الكشف : ${alb[index]['price']}  ',
                address:'العنوان : ${alb[index]['address']}',
                dates:'مواعيد العمل : ${alb[index]['dates']}',
                phone:'tel: ${alb[index]['phone']}',
                image: AssetImage('images/d1.png'),
                onTap: (){
                });
          },
          itemCount: alb.length,

          physics: BouncingScrollPhysics(),




        ),
      ),


    );
  }
}
