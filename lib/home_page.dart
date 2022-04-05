import 'package:dalell/component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Elan(),
              CircleAvatarHomePage(),
              TextHomePage(
                text: 'دليل مطرطارس الطبي',
                num: 20,
              ),
              TextHomePage(
                text: 'برعاية المركز الخدمي',
                num: 10,
              ),
              SizedBox(height: 10,),
              SectionHomePage(),
            ],
          ),
        ),
      ),
    );
  }
}