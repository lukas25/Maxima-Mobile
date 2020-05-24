import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  static height(double height, BuildContext context) {
    return height * MediaQuery.of(context).size.height / 750.0587997700522;
}
  static width(double width, BuildContext context) {
    return width * MediaQuery.of(context).size.width / 423.5293998850261;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff047CFC),
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(60),
      //         child: AppBar(
      //       backgroundColor: Color(0xff047CFC),
      //     elevation: 0,
      //     title: Text("Maxima"),
      //     leading: CircleAvatar(child:
      //     Image(image: AssetImage("img/GadaLogo.png"),height: 40,),
      //     backgroundColor: Colors.transparent,),
      //   ),
      // ),
      body: Container(
          child: Column(
        children: <Widget>[
          //HeadProfile
          Stack(
            children: <Widget>[
              Container(
                height: 400,
                color: Color(0xff047CFC),
              ),
              Container(
                margin: EdgeInsets.only(top:height(270, context)),
                padding: EdgeInsets.only(top: height(15, context)),
                height: height(410, context),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: Colors.white),
                child: ListView(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MenusButtons(
                            icons: Icons.content_copy,
                            color1: Colors.blue,
                            color2: Colors.green,
                            name: "Presensi",
                            route: "/Attendance"),
                        MenusButtons(
                            icons: Icons.note,
                            color1: Colors.red,
                            color2: Colors.purple,
                            name: "Laporan",
                            route: "/laporan")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MenusButtons(
                            icons: Icons.perm_phone_msg,
                            color1: Colors.blue[600],
                            color2: Colors.yellow,
                            name: "Hub Bantuan",
                            route: "/HubCommando"),
                        MenusButtons(
                            icons: Icons.calendar_today,
                            color1: Colors.greenAccent,
                            color2: Colors.redAccent,
                            name: "Jadwal",
                            route: "/laporan")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MenusButtons(
                            icons: Icons.people,
                            color1: Colors.blue,
                            color2: Colors.green,
                            name: "Serah Terima",
                            route: "/laporan"),
                        MenusButtons(
                            icons: Icons.history,
                            color1: Colors.red,
                            color2: Colors.purple,
                            name: "Riwayat",
                            route: "/laporan")
                      ],
                    )
                  ],
                ),
                
              ),
              Container(
                  height: height(230, context),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/TestBg.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.only(top: 15),
                          child: Image(
                            image: AssetImage("img/GadaLogo.png"),
                            height: 45,
                          )),
                      Padding(padding: const EdgeInsets.all(10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0),
                                child: Text(
                                  "Hey, Lukas ",
                                  style: TextStyle(fontSize: 25, color: Colors.white),
                                ),
                              ),
                              Text("Selamat Beraktifitas Hari ini", style: TextStyle(color:Colors.white, fontSize: 18),)
                            ],
                          ),
                          CircleAvatar(
                            radius: 30,
                            child: Icon(
                              Icons.person,
                              size: 25,
                            ),
                          )
                        ],
                      )
                    ],
                  )),
              //Shift Card Start
              Container(
                margin: EdgeInsets.only(top:height(180, context)),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: height(120, context),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    elevation: 12.0,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Shift Selanjutnya : ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Selasa, 5 Mei 2020 ",
                                  style: TextStyle(
                                      fontSize: 22 * MediaQuery.of(context).size.height / 750.0587997700522, color: Colors.black),
                                ),
                                Container(
                                  height: 25,
                                  width: 2,
                                  color: Colors.black,
                                ),
                                Text(
                                  " 18.00-22.00",
                                  style: TextStyle(
                                      fontSize: 20 * MediaQuery.of(context).size.height / 750.0587997700522, color: Colors.black),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ), //Shift Card End
            ],
          ),
          //EndHeadProfile
        ],
      )),
    floatingActionButton: Container(
      height: height(80, context),
      width: width(80, context),
      child: FittedBox(
              child: FloatingActionButton(
                elevation: 12.0,
          backgroundColor: Colors.red,
          child: Text("Panic!", style:TextStyle(color: Colors.white)),
          onPressed: 
        (){}),
      ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    bottomNavigationBar: Container(
      height: height(65, context),
      child: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Padding( 
            padding: const EdgeInsets.only(left:70.0,right:15.0 ,top:15.0 ,bottom:15.0 ),
            child: IconButton(icon: Icon(Icons.cancel, color: Colors.white,), onPressed: null),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0,right:70.0 ,top:15.0 ,bottom:15.0 ),
            child: IconButton(icon: Icon(Icons.person, color: Colors.white), onPressed: null),
          )
        ],),
        shape:CircularNotchedRectangle(),
        color: Color(0xff047CFC),
        notchMargin: 8.0,
        elevation: 0,
      ),
    ),
    );
  }
}

class MenusButtons extends StatelessWidget {
  MenusButtons({this.icons, this.color1, this.color2, this.name, this.route});
  final IconData icons;
  final Color color1;
  final Color color2;
  final String name;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180 * MediaQuery.of(context).size.width / 423.5293998850261,
        height: 130 * MediaQuery.of(context).size.height / 750.0587997700522,
        child: Card(
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: InkWell(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [color1, color2]),
                  borderRadius: BorderRadius.circular(25)),
              padding: EdgeInsets.only(top: 30 * MediaQuery.of(context).size.height / 750.0587997700522),
              child: Column(
                children: <Widget>[
                  Icon(
                    icons,
                    color: Colors.white,
                    size: 50,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white, fontSize: 15 , letterSpacing: 2),
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, route);
            },
          ),
        ));
  }
}
