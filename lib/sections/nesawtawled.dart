import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalell/component.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Nesa extends StatefulWidget {
   Nesa({Key? key}) : super(key: key);

  @override
  State<Nesa> createState() => _NesaState();
}

class _NesaState extends State<Nesa> {
  List nesa = [];
  CollectionReference nesaDoc = FirebaseFirestore.instance.collection('nesa');
  getData()async
  {
    var responseBody = await nesaDoc.get();
    responseBody.docs.forEach((element) {
      setState(() {
        nesa.add(element.data());
      });
      print(nesa);
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
        title: Text('النساء و التوليد',style: GoogleFonts.cairo(fontSize: 25,color: Colors.black)),
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
                text:'${nesa[index]['name']}',
                price:'سعر الكشف : ${nesa[index]['price']} جنيه ',
                address:'العنوان : ${nesa[index]['address']}',
                dates:'مواعيد العمل : ${nesa[index]['dates']}',
                phone:'tel: ${nesa[index]['phone']}',
                image: AssetImage('images/d1.png'),
                onTap: (){
                });
          },
          itemCount: nesa.length,

          physics: BouncingScrollPhysics(),




        ),
      ),


    );
  }
}
