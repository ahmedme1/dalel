import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Labs extends StatefulWidget {
  Labs({Key? key}) : super(key: key);

  @override
  State<Labs> createState() => _LabsState();
}

class _LabsState extends State<Labs> {
  List labs = [];
  CollectionReference allLabs = FirebaseFirestore.instance.collection('labs');
  getData()async
  {
    var responseBody = await allLabs.get();
    responseBody.docs.forEach((element) {
      setState(() {
        labs.add(element.data());
      });
      print(labs);
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
        title: Text('المعامل',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
            return Cust_ForLab(
                text:'${labs[index]['name']}',
                address:'العنوان : ${labs[index]['address']}',
                dates:'مواعيد العمل : ${labs[index]['dates']}',
                phone:'tel: ${labs[index]['phone']}',
                image: AssetImage('images/d1.png'),
                onTap: (){
                });
          },
          itemCount: labs.length,

          physics: BouncingScrollPhysics(),




        ),
      ),


    );
  }
}
