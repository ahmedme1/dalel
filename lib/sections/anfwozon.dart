import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Anf_ozon extends StatefulWidget {
   Anf_ozon({Key? key}) : super(key: key);

  @override
  State<Anf_ozon> createState() => _Anf_ozonState();
}

class _Anf_ozonState extends State<Anf_ozon> {
  List anf = [];
  CollectionReference anfDoc = FirebaseFirestore.instance.collection('anf');
  getData()async
  {
    var responseBody = await anfDoc.get();
    responseBody.docs.forEach((element) {
      setState(() {
        anf.add(element.data());
      });
      print(anf);
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
        title: Text('أنف و أذن و حنجرة',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                text:'${anf[index]['name']}',
                price:'سعر الكشف : ${anf[index]['price']} جنيه ',
                address:'العنوان : ${anf[index]['address']}',
                dates:'مواعيد العمل : ${anf[index]['dates']}',
                phone:'رقم الموبايل : ${anf[index]['phone']}',
                image: AssetImage('images/d1.png'),
                onTap: (){
                });
          },
          itemCount: anf.length,

          physics: BouncingScrollPhysics(),




        ),
      ),


    );
  }
}
