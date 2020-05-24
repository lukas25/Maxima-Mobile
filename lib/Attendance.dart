import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LiveAttendance extends StatefulWidget {
  @override
  _LiveAttendanceState createState() => _LiveAttendanceState();
}

class _LiveAttendanceState extends State<LiveAttendance> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formatDate = DateFormat('EEE, d MMMM y').format(now);
    String TimeFormat = DateFormat.Hm().format(now);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0851a1),
        title: Text('Presensi'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Container(
                        child: Column(
                      children: <Widget>[
                        Text(
                          TimeFormat,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 38,
                              letterSpacing: 2),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(formatDate,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  letterSpacing: 2)),
                        )
                      ],
                    )),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      height: 280,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
                        elevation: 12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(horizontal:25),
                              child: Row(
                                children: <Widget>[
                                  FaIcon(FontAwesomeIcons.moon),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                                    child: Text("Shift Malam",
                                    style: TextStyle(
                                        fontSize: 18, letterSpacing: 1, fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                                child: Text(
                              "18:00 WIB - 22:00 WIB",
                              style: TextStyle(
                                  fontSize: 28,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            )),
                            Center(child: Text("Mulai Dalam 5 jam lagi", style: TextStyle(color:Colors.red,fontSize: 17),)),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    height: 70,
                                    width: 180,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      color: Color(0xff047CFC),
                                      child: InkWell(
                                          child: Center(
                                              child: Text(
                                        "Absen Masuk",
                                        style: TextStyle(color: Colors.white,fontSize: 19),
                                      ))),
                                    ),
                                  ),
                                  Container(
                                    height: 70,
                                    width: 180,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      color: Color(0xff047CFC),
                                      child: InkWell(
                                          child: Center(
                                              child: Text("Absen Keluar",
                                                  style: TextStyle(
                                                      color: Colors.white,fontSize: 19)))),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              decoration: BoxDecoration(image:DecorationImage(image: AssetImage('img/TestBackground.png'),fit: BoxFit.cover)),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width),
          Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical:15.0, horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(child: 
                    Text("Riwayat Absensi", style: TextStyle(fontSize:22, fontWeight: FontWeight.bold),)),
                    Container(child: 
                    InkWell(child: Text("lebih Banyak",style: TextStyle(fontSize:17, color: Colors.blue),))),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:15, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Text("21 May 2020", style: TextStyle(fontSize: 19),),
                      Text("Cuti / Berhalangan Hadir", style: TextStyle(color:Colors.red)),
                      IconButton(icon: Icon(Icons.arrow_forward), onPressed: null)
                    ],),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:15, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Text("23 May 2020",style: TextStyle(fontSize: 19),),
                      Text("Pekerjaan Selesai", style: TextStyle(color:Colors.green),),
                      IconButton(icon: Icon(Icons.arrow_forward), onPressed: null)
                    ],),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:15, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Text("25 May 2020",style: TextStyle(fontSize: 18),),
                      Text("Pekerjaan Belum Selesai",style: TextStyle(color:Colors.orange,fontSize: 15)),
                      IconButton(icon: Icon(Icons.arrow_forward), onPressed: null)
                    ],),
                  )
                ],
              )
              ],
          ),
          )
        ],
      ),
    );
  }
}

class AttendanceLocation extends StatefulWidget {
  @override
  _AttendanceLocationState createState() => _AttendanceLocationState();
}

class _AttendanceLocationState extends State<AttendanceLocation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
