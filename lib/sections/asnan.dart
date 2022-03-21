import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Asnan extends StatefulWidget {
   Asnan({Key? key}) : super(key: key);

  @override
  State<Asnan> createState() => _AsnanState();
}

class _AsnanState extends State<Asnan> {
  List asnan = [];
  CollectionReference asnanDoc = FirebaseFirestore.instance.collection('asnan');
  getData()async
  {
    var responseBody = await asnanDoc.get();
    responseBody.docs.forEach((element) {
      setState(() {
        asnan.add(element.data());
      });
      print(asnan);
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
        title: Text('الأسنان',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                text:'${asnan[index]['name']}',
                price:'سعر الكشف : ${asnan[index]['price']}  ',
                address:'العنوان : ${asnan[index]['address']}',
                dates:'مواعيد العمل : ${asnan[index]['dates']}',
                phone:'tel: ${asnan[index]['phone']}',
                image: AssetImage('images/d1.png'),
                onTap: (){
                });
          },
          itemCount: asnan.length,

          physics: BouncingScrollPhysics(),




        ),
      ),


    );
  }
}
