import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Geraha extends StatefulWidget {
  Geraha({Key? key}) : super(key: key);

  @override
  State<Geraha> createState() => _GerahaState();
}

class _GerahaState extends State<Geraha> {
  List geraha = [];
  CollectionReference gerahaDoc = FirebaseFirestore.instance.collection('geraha');
  getData()async
  {
    var responseBody = await gerahaDoc.get();
    responseBody.docs.forEach((element) {
      setState(() {
        geraha.add(element.data());
      });
      print(geraha);
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
        title: Text('الجراحة العامة',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                text:'${geraha[index]['name']}',
                price:'سعر الكشف : ${geraha[index]['price']}  ',
                address:'العنوان : ${geraha[index]['address']}',
                dates:'مواعيد العمل : ${geraha[index]['dates']}',
                phone:'tel: ${geraha[index]['phone']}',
                image: AssetImage('images/d1.png'),
                onTap: (){
                });
            },
          itemCount: geraha.length,

          physics: BouncingScrollPhysics(),




        ),
      ),


    );
  }
}
