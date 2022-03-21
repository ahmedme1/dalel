import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Masalek extends StatefulWidget {
   Masalek({Key? key}) : super(key: key);

  @override
  State<Masalek> createState() => _MasalekState();
}

class _MasalekState extends State<Masalek> {
  List msalek = [];
  CollectionReference msalekDoc = FirebaseFirestore.instance.collection('msalek');
  getData()async
  {
    var responseBody = await msalekDoc.get();
    responseBody.docs.forEach((element) {
      setState(() {
        msalek.add(element.data());
      });
      print(msalek);
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
        title: Text('المسالك البولية',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                text:'${msalek[index]['name']}',
                price:'سعر الكشف : ${msalek[index]['price']} جنيه ',
                address:'العنوان : ${msalek[index]['address']}',
                dates:'مواعيد العمل : ${msalek[index]['dates']}',
                phone:'tel: ${msalek[index]['phone']}',
                image: AssetImage('images/d1.png'),
                onTap: (){
                });
          },
          itemCount: msalek.length,

          physics: BouncingScrollPhysics(),




        ),
      ),


    );
  }
}
