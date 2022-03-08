import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ramad extends StatefulWidget {
  Ramad({Key? key}) : super(key: key);

  @override
  State<Ramad> createState() => _RamadState();
}

class _RamadState extends State<Ramad> {
  List ramad = [];
  CollectionReference ramadDoc = FirebaseFirestore.instance.collection('ramad');
  getData()async
  {
    var responseBody = await ramadDoc.get();
    responseBody.docs.forEach((element) {
      setState(() {
        ramad.add(element.data());
      });
      print(ramad);
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
        title: Text(' الرمد',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                text:'${ramad[index]['name']}',
                price:'سعر الكشف : ${ramad[index]['price']} جنيه ',
                address:'العنوان : ${ramad[index]['address']}',
                dates:'مواعيد العمل : ${ramad[index]['dates']}',
                phone:'رقم الموبايل : ${ramad[index]['phone']}',
                image: AssetImage('images/d1.png'),
                onTap: (){
                });
          },
          itemCount: ramad.length,

          physics: BouncingScrollPhysics(),




        ),
      ),


    );
  }
}
