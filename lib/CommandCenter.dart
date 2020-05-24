import 'package:flutter/material.dart';

class CallCommand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff047CFC),
      appBar: AppBar(
        backgroundColor: Color(0xff047CFC),
        elevation: 0,
        title: Text("Pusat Komando"),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Card(
            elevation: 12,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Center(
                      child: Text(
                    "Hubungi Pusat Komando",
                    style: TextStyle(fontSize: 22),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 10),
                  child: Text(
                      "Perlu Bantuan?, Anda dapat menghubungi kami melalui jalur komunikasi yang tersedia di bawah ini : ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 155*MediaQuery.of(context).size.width / 423.5293998850261,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:15.0),
                              child: Container(
                                child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[Text("Email", style: TextStyle(fontSize: 20),),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical:5.0),
                                child: Text("Anda dapat Menghubungi Kami melalui Email : ",style: TextStyle(fontSize: 15),),
                              )],)
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Alamat",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical:5.0),
                                    child: Text(
                                      "Anda juga dapat langsung mendatangi alamat resmi kami di : ",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:15.0),
                        child: Container(
                          width: 160*MediaQuery.of(context).size.width / 423.5293998850261,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Media Sosial",
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                               padding: const EdgeInsets.symmetric(vertical:5.0),
                                child: Text(
                                  "Anda dapat Menghubungi Kami melalui Media Sosial : ",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ), Text("Facebook :"),Text("Twitter :"),Text("Website :")
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Center(
                    child: Text(
                  "Atau",
                  style: TextStyle(fontSize: 18),
                )),
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 25),
                      child: Text(
                        'Anda dapat Menggunakan Pelayanan Respon Cepat dengan menekan tombol di bawah, yang akan langsung menghubungi Kami melalui Jalur Telepon',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                colors: [
                                  Color(0xff1CACF4),
                                  Color(0xff4CBC14)
                                ])),
                        height: 40 *
                            MediaQuery.of(context).size.height /
                            750.0587997700522,
                        child: InkWell(
                          onTap: () {},
                          child: (Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              elevation: 15,
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    child: Icon(Icons.call),
                                  ),
                                  Text("Panggil",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 22)),
                                ],
                              ))),
                        )),
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
