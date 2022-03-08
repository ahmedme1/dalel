import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Cust_Container extends StatelessWidget {
  Cust_Container({Key? key,this.image,this.text,this.onTap,this.price,this.address,this.dates,this.phone}) : super(key: key);
  ImageProvider? image;
  String? text;
  String? price;
  String? dates;
  String? address;
  String? phone;

  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(
        image: image!,
      ) ,
      title: Text(text!,style: GoogleFonts.cairo(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.end,),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(price!,style: GoogleFonts.cairo(fontSize: 17),),
          Text(dates!,style: GoogleFonts.cairo(fontSize: 17,),),
          Text(address!,style: GoogleFonts.cairo(fontSize: 15,),),
          Text(phone!,style: GoogleFonts.cairo(fontSize: 17,),),
        ],
      ),
      onTap: onTap!,



    );
  }
}

class Cust_Gest extends StatelessWidget {
   Cust_Gest({Key? key,required this.onChanged, this.text, this.imago}) : super(key: key);
   VoidCallback onChanged;
   String? text;
   ImageProvider? imago;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 2,
                blurRadius: 3,
              ),
            ],
          ),
          child: Stack(
              children:[
                Column(
                  children: [

                    Container(
                        width: 140,
                        height: 90,
                        child: Image(image: imago!)
                    ),
                    SizedBox(
                      height: 1,
                    ),

                    Text('$text',style: GoogleFonts.cairo(fontSize: 15),),
                  ],
                ),

              ]),
        ),
      ),
    );
  }
}


class Cust_ForLab extends StatelessWidget {
  Cust_ForLab({Key? key,this.image,this.text,this.onTap,this.address,this.dates,this.phone}) : super(key: key);
  ImageProvider? image;
  String? text;
  String? dates;
  String? address;
  String? phone;

  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(
        image: image!,
      ) ,
      title: Text(text!,style: GoogleFonts.cairo(fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.end,),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(dates!,style: GoogleFonts.cairo(fontSize: 17,),),
          Text(address!,style: GoogleFonts.cairo(fontSize: 17,),),
          Text(phone!,style: GoogleFonts.cairo(fontSize: 17,),),
        ],
      ),
      onTap: onTap!,



    );
  }
}









