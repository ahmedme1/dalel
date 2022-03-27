// import 'dart:core';
// import 'package:flutter/material.dart';
// import 'home_page.dart';
// import 'screen/lawer_screen.dart';
// import 'screen/omal_screen.dart';
//
// class HomeHome extends StatefulWidget {
//    HomeHome({Key? key}) : super(key: key);
//   @override
//   State<HomeHome> createState() => _HomeHomeState();
// }
//
// class _HomeHomeState extends State<HomeHome> {
//   int cureentIndex = 1;
//   List<Widget> list = [
//     LawerScreen(),
//     HomePage(),
//     OmalScreen(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: list[cureentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (value)
//         {
//           setState(() {
//             cureentIndex = value;
//           });
//         },
//         currentIndex: cureentIndex,
//
//         items: [
//           BottomNavigationBarItem(
//               icon: Image.asset('images/d22.png',height: 40,width: 40,),
//               label: ''),
//           BottomNavigationBarItem(
//               icon: Image.asset('images/d21.png',height: 40,width: 40,),
//               label: ''),
//           BottomNavigationBarItem(
//               icon: Image.asset('images/d23.png',height: 40,width: 40,),
//               label: ''),
//         ],
//       ),
//     );
//   }
// }
