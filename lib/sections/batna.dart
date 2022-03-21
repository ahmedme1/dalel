import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Batna extends StatefulWidget {
   Batna({Key? key}) : super(key: key);

  @override
  State<Batna> createState() => _BatnaState();
}

class _BatnaState extends State<Batna> {
  List batna = [];
  CollectionReference batnaDoc = FirebaseFirestore.instance.collection('batna');
  getData()async
  {
    var responseBody = await batnaDoc.get();
    responseBody.docs.forEach((element) {
      setState(() {
        batna.add(element.data());
      });
      print(batna);
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
        title: Text('الباطنة',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                text:'${batna[index]['name']}',
                price:'سعر الكشف : ${batna[index]['price']}  ',
                address:'العنوان : ${batna[index]['address']}',
                dates:'مواعيد العمل : ${batna[index]['dates']}',
                phone:'tel: ${batna[index]['phone']}',
                image: AssetImage('images/d1.png'),
                onTap: (){
                });
          },
          itemCount: batna.length,

          physics: BouncingScrollPhysics(),




        ),
      ),


    );
  }
}
