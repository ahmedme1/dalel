import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';



class HomeController extends GetxController{

  List elanList = [];

  CollectionReference elan = FirebaseFirestore.instance.collection('elan');

  getData() async
  {
    var responseBody = await elan.get();
    responseBody.docs.forEach((element) {

        elanList.add(element.data());
     update();
      print(elanList);
    });
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }

}
class AlbController extends GetxController{
  List alb = [];
  CollectionReference albDoc = FirebaseFirestore.instance.collection('alb');
  getData()async
  {
    var responseBody = await albDoc.get();
    responseBody.docs.forEach((element) {
        alb.add(element.data());
        update();
      print(alb);
    });
  }


  @override
  void onInit() {
       getData();
       super.onInit();
  }

}
class AnfController extends GetxController{
  List anf = [];
  CollectionReference anfDoc = FirebaseFirestore.instance.collection('anf');
  getData()async
  {
    var responseBody = await anfDoc.get();
    responseBody.docs.forEach((element) {
        anf.add(element.data());
        update();
        print(anf);
    });

  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }

}
class AsnanController extends GetxController{
  List asnan = [];
  CollectionReference asnanDoc = FirebaseFirestore.instance.collection('asnan');
  getData()async
  {
    var responseBody = await asnanDoc.get();
    responseBody.docs.forEach((element) {

        asnan.add(element.data());
        update();
        print(asnan);
    });
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }

}
class AtfalController extends GetxController{
  List atfal = [];
  CollectionReference atfalDoc = FirebaseFirestore.instance.collection('atfal');
  getData()async
  {
    var responseBody = await atfalDoc.get();
    responseBody.docs.forEach((element) {

        atfal.add(element.data());
    update();
      print(atfal);
    });
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
class BatnaController extends GetxController{
  List batna = [];
  CollectionReference batnaDoc = FirebaseFirestore.instance.collection('batna');
  getData()async
  {
    var responseBody = await batnaDoc.get();
    responseBody.docs.forEach((element) {

        batna.add(element.data());
      update();
      print(batna);
    });
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
class EzamController extends GetxController{
  List ezam = [];
  CollectionReference ezamDoc = FirebaseFirestore.instance.collection('ezam');
  getData()async
  {
    var responseBody = await ezamDoc.get();
    responseBody.docs.forEach((element) {

        ezam.add(element.data());
      update();
      print(ezam);
    });
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
class GeldyaController extends GetxController{
  List geldya = [];
  CollectionReference geldyaDoc = FirebaseFirestore.instance.collection('geldya');
  getData()async
  {
    var responseBody = await geldyaDoc.get();
    responseBody.docs.forEach((element) {

        geldya.add(element.data());
      update();
      print(geldya);
    });
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
class GerahaController extends GetxController{
  List geraha = [];
  CollectionReference gerahaDoc = FirebaseFirestore.instance.collection('geraha');
  getData()async
  {
    var responseBody = await gerahaDoc.get();
    responseBody.docs.forEach((element) {

        geraha.add(element.data());
      update();
      print(geraha);
    });
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }

}
class MsalekController extends GetxController{
  List msalek = [];
  CollectionReference msalekDoc = FirebaseFirestore.instance.collection('msalek');
  getData()async
  {
    var responseBody = await msalekDoc.get();
    responseBody.docs.forEach((element) {

        msalek.add(element.data());
      update();
      print(msalek);
    });
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
class NesaController extends GetxController{
  List nesa = [];
  CollectionReference nesaDoc = FirebaseFirestore.instance.collection('nesa');
  getData()async
  {
    var responseBody = await nesaDoc.get();
    responseBody.docs.forEach((element) {

        nesa.add(element.data());
      update();
      print(nesa);
    });
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }

}
class RamadController extends GetxController{
  List ramad = [];
  CollectionReference ramadDoc = FirebaseFirestore.instance.collection('ramad');
  getData()async
  {
    var responseBody = await ramadDoc.get();
    responseBody.docs.forEach((element) {

        ramad.add(element.data());
    update();
      print(ramad);
    });
  }
  @override
  void onInit() {
   getData();
    super.onInit();
  }
}
class SadryaController extends GetxController{
  List sadrya = [];
  CollectionReference sadryaDoc = FirebaseFirestore.instance.collection('sadrya');
  getData()async
  {
    var responseBody = await sadryaDoc.get();
    responseBody.docs.forEach((element) {
        sadrya.add(element.data());
     update();
      print(sadrya);
    });
  }
  @override
  void onInit() {
   getData();
    super.onInit();
  }
}
class LabsController extends GetxController{
  List labs = [];
  CollectionReference allLabs = FirebaseFirestore.instance.collection('labs');
  getData()async
  {
    var responseBody = await allLabs.get();
    responseBody.docs.forEach((element) {

        labs.add(element.data());
      update();
      print(labs);
    });
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
class PharmController extends GetxController{
  List saydlyat = [];
  CollectionReference allfarm = FirebaseFirestore.instance.collection('saydlyat');
  getData()async
  {
    var responseBody = await allfarm.get();
    responseBody.docs.forEach((element)   {

        saydlyat.add(element.data());
      update();
      print(saydlyat);
    });
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}