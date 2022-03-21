// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class OmalScreen extends StatelessWidget {
//    OmalScreen({Key? key}) : super(key: key);
// List<String> omal = [
//   'المحارة',
//   'السباكة',
//   'النقاشة',
//   'الكهرباء',
//   'البلاط',
//   'النجارة',
//   'النجارة المسلحة',
//   'الحدادة',
//   ' الحدادة المسلحة',
// ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 30,),
//             ListView(
//               shrinkWrap: true,
//               children: [
//                 CircleAvatar(
//                   radius: 60,
//                   backgroundColor: Colors.white,
//                   child: Image(
//                     image: AssetImage('images/d3.png'),
//                   ),
//                 ),
//                 Text(
//                   'الدليل الصناعي',
//                   style: GoogleFonts.cairo(
//                       color: Colors.red.shade400,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//                 Text(
//                   'برعاية المركز الخدمي',
//                   style: GoogleFonts.cairo(
//                       color: Colors.red.shade400,
//                       fontSize: 10,
//                       fontWeight: FontWeight.bold),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//             ListView.builder(
//                 physics: NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 itemBuilder: (context,index)
//                 {
//                   return  Padding(
//                     padding: const EdgeInsets.only(right: 10,left: 10,bottom: 15),
//                     child: Container(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           Text('${omal[index]}',style: GoogleFonts.cairo(fontSize: 20),textAlign: TextAlign.end,),
//
//                         ],
//                       ),
//                       padding: EdgeInsets.only(right: 20),
//                       height: 120,
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             spreadRadius: 2,
//                             color: Colors.red.shade200,
//                             blurRadius: 1,
//
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 }),
//
//           ],
//         ),
//       ),
//
//     );
//   }
// }
