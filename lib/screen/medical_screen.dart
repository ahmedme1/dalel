// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dalell/sections/Ezam.dart';
// import 'package:dalell/sections/alb.dart';
// import 'package:dalell/sections/anfwozon.dart';
// import 'package:dalell/sections/asnan.dart';
// import 'package:dalell/sections/atfal.dart';
// import 'package:dalell/sections/batna.dart';
// import 'package:dalell/sections/geldya.dart';
// import 'package:dalell/sections/geraha.dart';
// import 'package:dalell/sections/labs.dart';
// import 'package:dalell/sections/msalek.dart';
// import 'package:dalell/sections/nesawtawled.dart';
// import 'package:dalell/sections/ramad.dart';
// import 'package:dalell/sections/sadrya.dart';
// import 'package:dalell/sections/saydlyat.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../component.dart';
//
// class MedicalScreen extends StatefulWidget {
//   const MedicalScreen({Key? key}) : super(key: key);
//
//   @override
//   State<MedicalScreen> createState() => _MedicalScreenState();
// }
//
// class _MedicalScreenState extends State<MedicalScreen> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: ListView(
//           physics: BouncingScrollPhysics(),
//           children: [
//             Container(
//               height: 100,
//               width: double.infinity,
//               child: ListView.builder(
//                 itemBuilder: (context, index) {
//                   return Text(
//                     '${elanList[index]['body']}',
//                     style: GoogleFonts.cairo(fontSize: 15, color: Colors.red),
//                     textAlign: TextAlign.end,
//                   );
//                 },
//                 itemCount: elanList.length,
//               ),
//             ),
//             CircleAvatar(
//               radius: 60,
//               backgroundColor: Colors.white,
//               child: Image(
//                 image: AssetImage('images/d3.png'),
//               ),
//             ),
//             Text(
//               ' دليل مطرطارس الطبي',
//               style: GoogleFonts.cairo(
//                   color: Colors.red.shade400,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//             Text(
//               'برعاية المركز الخدمي',
//               style: GoogleFonts.cairo(
//                   color: Colors.red.shade400,
//                   fontSize: 10,
//                   fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Stack(
//               children: [
//                 Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Cust_Gest(
//                           onChanged: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Batna()));
//                           },
//                           text: 'الباطنة',
//                           imago: AssetImage(
//                             'images/d5.png',
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Cust_Gest(
//                           onChanged: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => Geldya()),
//                             );
//                           },
//                           text: 'الجلدية',
//                           imago: AssetImage('images/d4.png'),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Cust_Gest(
//                           onChanged: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => Masalek()),
//                             );
//                           },
//                           text: 'المسالك البولية',
//                           imago: AssetImage('images/d8.png'),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Cust_Gest(
//                           onChanged: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => Asnan()),
//                             );
//                           },
//                           text: 'الاسنان',
//                           imago: AssetImage('images/d7.png'),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Cust_Gest(
//                           onChanged: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => Nesa()),
//                             );
//                           },
//                           text: 'النسا و التوليد ',
//                           imago: AssetImage('images/d10.png'),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Cust_Gest(
//                           onChanged: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => Atfal()),
//                             );
//                           },
//                           text: 'الأطفال ',
//                           imago: AssetImage('images/d9.png'),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Cust_Gest(
//                           onChanged: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => Anf_ozon()),
//                             );
//                           },
//                           text: 'أنف و أذن و حنجرة ',
//                           imago: AssetImage('images/d11.png'),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Cust_Gest(
//                           onChanged: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => Ezam()),
//                             );
//                           },
//                           text: 'العظام ',
//                           imago: AssetImage('images/d12.png'),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Cust_Gest(
//                           onChanged: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => Sadrya()),
//                             );
//                           },
//                           text: 'الصدرية ',
//                           imago: AssetImage('images/d13.png'),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Cust_Gest(
//                           onChanged: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => Ramad()),
//                             );
//                           },
//                           text: 'الرمد ',
//                           imago: AssetImage('images/d18.png'),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Cust_Gest(
//                           onChanged: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => Alb()),
//                             );
//                           },
//                           text: 'القلب ',
//                           imago: AssetImage('images/d19.png'),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Cust_Gest(
//                           onChanged: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => Geraha()),
//                             );
//                           },
//                           text: 'الجراحة العامة  ',
//                           imago: AssetImage('images/d20.png'),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Cust_Gest(
//                           onChanged: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => Saydlyat()),
//                             );
//                           },
//                           text: 'الصيدليات ',
//                           imago: AssetImage('images/d17.png'),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Cust_Gest(
//                           onChanged: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => Labs()),
//                             );
//                           },
//                           text: 'المعامل  ',
//                           imago: AssetImage('images/d14.png'),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 60,
//                     ),
//                   ],
//                 ),
//                 Positioned(
//                   bottom: 7,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Powered by : Ahmed Ibrahim',
//                         style: GoogleFonts.cairo(
//                             fontSize: 13,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.red.shade200),
//                       ),
//                       Text(
//                         'Contact : 01003705602',
//                         style: GoogleFonts.cairo(
//                             fontSize: 13,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.red.shade200),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }