import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class FormKendaraan extends StatefulWidget {
  @override
  _FormKendaraanState createState() => _FormKendaraanState();
}

TextEditingController _textFieldController = TextEditingController();
bool _isEnabled = true;
var now = DateTime.now();
void initstate() {
  _textFieldController.text =
      "${now.year.toString()} - ${now.month.toString().padLeft(2, '0')} - ${now.day.toString().padLeft(2, '0')}";
}

class _FormKendaraanState extends State<FormKendaraan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Laporan Kendaraan'),
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text("Form Laporan Kendaraan",
                      style: TextStyle(color: Colors.black, fontSize: 15)),
                ),
              ),
              TextField(
                controller: _textFieldController,
                enabled: !_isEnabled,
                decoration: InputDecoration(
                    labelText:
                        "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                enabled: _isEnabled,
                maxLines: 6,
                decoration: InputDecoration(
                    labelText: "Detil Laporan",
                    hintText: "Deskripsi Laporan",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              )
            ]),
          ),
        ]));
  }
}

class PatrolReport extends StatefulWidget {
  @override
  _PatrolReportState createState() => _PatrolReportState();
}

class _PatrolReportState extends State<PatrolReport> {
  File imageFile;

  void _openCamera(BuildContext context) async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {});
    Navigator.of(context).pop();
  }

  void _openGaleri(BuildContext context) async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {});
    Navigator.of(context).pop();
  }

  Future<void> _showDialogChoice(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Pilih Salah Satu"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text("Buka Kamera"),
                    onTap: () {
                      _openCamera(context);
                    },
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  GestureDetector(
                    child: Text("Buka Galeri"),
                    onTap: () {
                      _openGaleri(context);
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget _imageValidator() {
    if (imageFile == null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(child: Text("Gambar Belum Tersedia")),
          RaisedButton(
            onPressed: () {
              _showDialogChoice(context);
            },
            child: Text("Pilih Gambar"),
          )
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: Image.file(imageFile, height: 400, width: 400),
          ),
          RaisedButton(
            onPressed: () {
              _showDialogChoice(context);
            },
            child: Text("Ganti Gambar"),
          )
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Laporan Patroli"),
      ),
      body: Container(
        child: Center(
          child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: _imageValidator()),
        ),
      ),
    );
  }
}

class GuestBooks extends StatefulWidget {
  @override
  _GuestBooksState createState() => _GuestBooksState();
}

class _GuestBooksState extends State<GuestBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Text(
        //     "Buku Tamu",
        //     style: TextStyle(color: Color(0xff0851a1)),
        //   ),
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        //   leading: BackButton(color: Color(0xff0851a1)),
        // ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 70,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/ModelSubcard.jpg'),
                      fit: BoxFit.cover)),
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.arrowLeft,
                        color: Color(0xff0851a1),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Text(
                    "Buku Tamu",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0851a1)),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Nama Instansi",
                          hintText: "Instansi Tamu",
                          labelStyle:
                              TextStyle(fontSize: 18, color: Color(0xff0851a1)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(width: 1, color: Color(0xff0851a1)),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff0851a1), width: 2),
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "No Telp",
                          hintText: "Kontak Instansi",
                          labelStyle: TextStyle(fontSize: 18),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(width: 1, color: Color(0xff0851a1)),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff0851a1), width: 2),
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                          labelText: "Keperluan",
                          hintText: "Deskripsi Keperluan",
                          labelStyle: TextStyle(fontSize: 18),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide:
                                BorderSide(width: 1, color: Color(0xff0851a1)),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff0851a1), width: 2),
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Divider(color: Colors.black),
                  Text("Lainnya"),
                  Center(
                    child: InkWell(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical:20),
                        padding: EdgeInsets.symmetric(horizontal:15),
                        width: MediaQuery.of(context).size.width*0.7,
                        height: 50,
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(25)),
                          color: Color(0xff0851a1),
                          child: Center(child: Text("Pilih Gambar",style: TextStyle(color:Colors.white),)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff0851a1), width: 3),
                  borderRadius: BorderRadius.circular(25)),
              margin: EdgeInsets.only(bottom: 15),
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: InkWell(
                splashColor: Color(0xff0851a1),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: FaIcon(
                          FontAwesomeIcons.solidSave,
                          color: Color(0xff0851a1),
                          size: 30,
                        ),
                      ),
                      Text("Kirim",
                          style: TextStyle(
                              color: Color(0xff0851a1), fontSize: 27)),
                    ],
                  ),
                ),
                onTap: () {},
              )),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}
