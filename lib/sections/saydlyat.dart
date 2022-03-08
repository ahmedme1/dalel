import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Saydlyat extends StatefulWidget {
  Saydlyat({Key? key}) : super(key: key);

  @override
  State<Saydlyat> createState() => _SaydlyatState();
}

class _SaydlyatState extends State<Saydlyat> {
  List saydlyat = [];
  CollectionReference allfarm = FirebaseFirestore.instance.collection('saydlyat');
   getData()async
  {
    var responseBody = await allfarm.get();
    responseBody.docs.forEach((element)   {
      setState(() {
        saydlyat.add(element.data());
      });
      print(saydlyat);
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
        title: Text('الصيدليات',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                text:'صيدلية : ${saydlyat[index]['name']}',
                address:'العنوان : ${saydlyat[index]['address']}',
                dates:'مواعيد العمل : ${saydlyat[index]['dates']}',
                phone:'رقم الموبايل : ${saydlyat[index]['phone']}',
                image: AssetImage('images/d16.png'),
                onTap: (){
                });
          },
          itemCount: saydlyat.length,

          physics: BouncingScrollPhysics(),




        ),
      ),


    );
  }
}
