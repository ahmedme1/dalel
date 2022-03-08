import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ezam extends StatefulWidget {
   Ezam({Key? key}) : super(key: key);

  @override
  State<Ezam> createState() => _EzamState();
}

class _EzamState extends State<Ezam> {
  List ezam = [];
  CollectionReference ezamDoc = FirebaseFirestore.instance.collection('ezam');
  getData()async
  {
    var responseBody = await ezamDoc.get();
    responseBody.docs.forEach((element) {
      setState(() {
        ezam.add(element.data());
      });
      print(ezam);
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
        title: Text('العظام',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                text:'${ezam[index]['name']}',
                price:'سعر الكشف : ${ezam[index]['price']} جنيه ',
                address:'العنوان : ${ezam[index]['address']}',
                dates:'مواعيد العمل : ${ezam[index]['dates']}',
                phone:'رقم الموبايل : ${ezam[index]['phone']}',
                image: AssetImage('images/d1.png'),
                onTap: (){
                });
          },
          itemCount: ezam.length,

          physics: BouncingScrollPhysics(),




        ),
      ),


    );
  }
}
