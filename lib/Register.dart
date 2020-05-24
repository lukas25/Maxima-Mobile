import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int RegisterLevel = 1;

  File _assetijazah;
  File _assetDiklat;
  File _assetKTA;
  String _assetIjazahName;
  String _assetDiklatName;
  String _assetKTAName;

  void _UploadIjazah() async {
    _assetijazah = await FilePicker.getFile(
        type: FileType.custom, allowedExtensions: ['pdf']);
    _assetIjazahName = _assetijazah.path.split('/').last;
    this.setState(() {});
  }

  void _UploadDiklat() async {
    _assetDiklat = await FilePicker.getFile(
        type: FileType.custom, allowedExtensions: ['pdf']);
    _assetDiklatName = _assetDiklat.path.split('/').last;
    this.setState(() {});
  }

  void _UploadKTA() async {
    _assetKTA = await FilePicker.getFile(
        type: FileType.custom, allowedExtensions: ['pdf']);
    _assetKTAName = _assetKTA.path.split('/').last;
    this.setState(() {});
  }

  Widget CheckUploadedFileIjazah() {
    if (_assetijazah == null) {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.5)),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            "Upload Ijazah",
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 17),
          ),
        ),
        width: 280* MediaQuery.of(context).size.width / 423.5293998850261,
        height: 40* MediaQuery.of(context).size.height / 750.0587997700522,
      );
    } else {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.5)),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            _assetIjazahName,
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 17),
          ),
        ),
        width: 280* MediaQuery.of(context).size.width / 423.5293998850261,
        height: 40* MediaQuery.of(context).size.height / 750.0587997700522,
      );
    }
  }

  Widget CheckUploadedFileDiklat() {
    if (_assetDiklat == null) {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.5)),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            "Upload Ijazah Diklat",
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 17),
          ),
        ),
        width: 190* MediaQuery.of(context).size.width / 423.5293998850261,
        height: 60,
      );
    } else {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.5)),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            _assetDiklatName,
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 17),
          ),
        ),
        width: 190* MediaQuery.of(context).size.width / 423.5293998850261,
        height: 60,
      );
    }
  }

  Widget CheckUploadedFileKTA() {
    if (_assetKTA == null) {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.5)),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            "Upload Scan KTA",
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5), fontSize: 17),
          ),
        ),
        width: 190*MediaQuery.of(context).size.width / 423.5293998850261,
        height: 60,
      );
    } else {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.5)),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            _assetKTAName,
            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 17),
          ),
        ),
        width: 190*MediaQuery.of(context).size.width / 423.5293998850261,
        height: 60,
      );
    }
  }

  void Uplevel(int level) {
    RegisterLevel = level;
    setState(() {});
  }

  Widget CheckLevel() {
    if (RegisterLevel == 1) {
      return Column(
        children: <Widget>[
          Center(
              child: Text(
            "--Data Diri--",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Nama Depan",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Nama Belakang",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "NIK",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Tempat Lahir",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Tanggal Lahir",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Alamat",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Gol Darah",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Tinggi Badan",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Berat Badan",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Jenis Kelamin",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Agama",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Kewarganegaraan",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
          ),
          Center(
              child: Text(
            "--Rumus Sidik jari--",
            style: TextStyle(
                color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Sidik Jari 1",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Sidik Jari 2",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
          ),
          Center(
              child: Text(
            "--No BPJS--",
            style: TextStyle(
                color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "BPJS Kesehatan",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "BPJS Ketenagakerjaan",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
          ),
          Center(
              child: Text(
            "--Data Bank--",
            style: TextStyle(
                color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Nama Bank",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "No Rek",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xff1CACF4), Color(0xff4CBC14)])),
              height:
                  40 * MediaQuery.of(context).size.height / 750.0587997700522,
              child: InkWell(
                onTap: () {
                  Uplevel(2);
                },
                child: (Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    elevation: 15,
                    color: Colors.transparent,
                    child: Center(
                        child: Text("Selanjutnya",
                            style: TextStyle(
                                color: Colors.white, fontSize: 22))))),
              )),
        ],
      );
    } else if (RegisterLevel == 2) {
      return Column(
        children: <Widget>[
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Data Keluarga",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Nama Ayah",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Nama Ibu",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Status Perkawinan",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Nama Istri",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "NIK Istri",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Jumlah Tanggungan Anak",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xff1CACF4), Color(0xff4CBC14)])),
              height:
                  40 * MediaQuery.of(context).size.height / 750.0587997700522,
              child: InkWell(
                onTap: () {
                  Uplevel(3);
                },
                child: (Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    elevation: 15,
                    color: Colors.transparent,
                    child: Center(
                        child: Text("Selanjutnya",
                            style: TextStyle(
                                color: Colors.white, fontSize: 22))))),
              )),
        ],
      );
    } else {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              'Data Pendidikan',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Pendidikan Terakhir"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Sekolah/Perguruan Tinggi"),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CheckUploadedFileIjazah(),
                  Container(
                    width: 100*MediaQuery.of(context).size.width / 423.5293998850261,
                    child: RaisedButton(
                        onPressed: () {
                          _UploadIjazah();
                        },
                        child: Text("Upload File")),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Pendidikan Satpam",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Pendidikan Terakhir"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Tempat Diklat"),
                )),
                Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Tahun Diklat"),
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  child: CheckUploadedFileDiklat(),
                  onTap: () {
                    _UploadDiklat();
                  },
                ),
                GestureDetector(
                  child: CheckUploadedFileKTA(),
                  onTap: () {
                    _UploadKTA();
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Masa Berlaku sd"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Sertifikat Kompetensi",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "No. Sertifikat"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "No. Reg"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Bidang Kompetensi"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Kualifikasi"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Masa Berlaku sd"),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xff1CACF4), Color(0xff4CBC14)])),
              height:
                  40 * MediaQuery.of(context).size.height / 750.0587997700522,
              child: InkWell(
                onTap: () {},
                child: (Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    elevation: 15,
                    color: Colors.transparent,
                    child: Center(
                        child: Text("Kirim",
                            style: TextStyle(
                                color: Colors.white, fontSize: 22))))),
              )),
        ],
      );
    }
  }

  Widget BreadCrumbs() {
    if (RegisterLevel == 1) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(234, 203, 41, 1),
                    radius: 5,
                  ),
                ),
                Text(
                  "Data Diri",
                  style: TextStyle(color: Color.fromRGBO(234, 203, 41, 1)),
                )
              ],
            ),
            Container(
              width: 30,
              height: 2,
              color: Colors.white,
            ),
            Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 5,
                  ),
                ),
                Text("Data Keluarga",style: TextStyle(color:Colors.white),)
              ],
            ),
            Container(
              width: 30,
              height: 2,
              color: Colors.white,
            ),
            Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 5,
                  ),
                ),
                Text("Pendidikan",style: TextStyle(color:Colors.white),)
              ],
            ),
          ],
        ),
      );
    } else if (RegisterLevel == 2) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 5,
                  ),
                ),
                Text("Data Diri",style: TextStyle(color:Colors.white),)
              ],
            ),
            Container(
              width: 30,
              height: 2,
              color: Colors.white,
            ),
            Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(234, 203, 41, 1),
                    radius: 5,
                  ),
                ),
                Text(
                  "Data Keluarga",
                  style: TextStyle(color: Color.fromRGBO(234, 203, 41, 1)),
                )
              ],
            ),
            Container(
              width: 30,
              height: 2,
              color: Colors.white,
            ),
            Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 5,
                  ),
                ),
                Text("Pendidikan",style: TextStyle(color:Colors.white),)
              ],
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 5,
                  ),
                ),
                Text("Data Diri",style: TextStyle(color:Colors.white),)
              ],
            ),
            Container(
              width: 30,
              height: 2,
              color: Colors.white,
            ),
            Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 5,
                  ),
                ),
                Text("Data Keluarga",style: TextStyle(color:Colors.white),)
              ],
            ),
            Container(
              width: 30,
              height: 2,
              color: Colors.white,
            ),
            Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(234, 203, 41, 1),
                    radius: 5,
                  ),
                ),
                Text(
                  "Pendidikan",
                  style: TextStyle(color: Color.fromRGBO(234, 203, 41, 1)),
                )
              ],
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/SplashRegister.png"), fit: BoxFit.cover),
          )),
          Container(
              child: ListView(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(top: 25),
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        child: Image(
                          image: AssetImage("img/GadaLogo.png"),
                          height: 70,
                          width: 70,
                        ),
                        radius: 50,
                        backgroundColor: Color.fromRGBO(255, 255, 255, 0.85),
                      ),
                      Text("Daftar Sekarang", style: TextStyle(fontSize: 30,color: Colors.white)),
                      Container(child: BreadCrumbs())
                    ],
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: CheckLevel()))),
            ],
          ))
        ],
      )),
    );
  }
}
