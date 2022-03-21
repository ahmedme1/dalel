import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Atfal extends StatefulWidget {
   Atfal({Key? key}) : super(key: key);

  @override
  State<Atfal> createState() => _AtfalState();
}

class _AtfalState extends State<Atfal> {
  List atfal = [];
  CollectionReference atfalDoc = FirebaseFirestore.instance.collection('atfal');
  getData()async
  {
    var responseBody = await atfalDoc.get();
    responseBody.docs.forEach((element) {
      setState(() {
        atfal.add(element.data());
      });
      print(atfal);
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
        title: Text('الأطفال',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                text:'${atfal[index]['name']}',
                price:'سعر الكشف : ${atfal[index]['price']}  ',
                address:'العنوان : ${atfal[index]['address']}',
                dates:'مواعيد العمل : ${atfal[index]['dates']}',
                phone:'tel: ${atfal[index]['phone']}',
                image: AssetImage('images/d1.png'),
                onTap: (){
                });
          },
          itemCount: atfal.length,

          physics: BouncingScrollPhysics(),




        ),
      ),


    );
  }
}
