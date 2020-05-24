import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Laporan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Laporan',
          style: TextStyle(color: Color(0xff0851a1)),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(color: Color(0xff0851a1)),
      ),
      body: ListView(
        children: <Widget>[
          Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/ModelSubcard.jpg"),
                          fit: BoxFit.cover)),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  margin: EdgeInsets.symmetric( vertical: 15),
                  child: Text(
                    "Laporan\nHarian ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
          MenuLaporan(icon: FontAwesomeIcons.book,text: "Buku Tamu", route: "/GuestBooks",),
          MenuLaporan(icon: FontAwesomeIcons.car,text: "Laporan Kendaraan", route: "/PatrolReport",),
          MenuLaporan(icon: FontAwesomeIcons.doorOpen ,text: "Laporan Kejadian", route: "/PatrolReport",),
          MenuLaporan(icon: FontAwesomeIcons.key,text: "Jurnal Jaga", route: "/PatrolReport",),
          MenuLaporan(icon: FontAwesomeIcons.camera ,text: "Laporan Patroli", route: "/PatrolReport",),
        ],        
      ),
      floatingActionButton: Container(
      height: 70* MediaQuery.of(context).size.height / 750.0587997700522,
      width: 70* MediaQuery.of(context).size.width / 423.5293998850261,
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
    bottomNavigationBar:  BottomAppBar(
        child:Container(
      decoration: BoxDecoration(border: Border.all(color: Color(0xff0851a1) )),
      height: 50 * MediaQuery.of(context).size.height / 750.0587997700522,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
          IconButton(icon: FaIcon(FontAwesomeIcons.home, color: Colors.white,), onPressed: null),
          IconButton(icon: Icon(Icons.person, color: Colors.white), onPressed: null)
        ],),
      ),
      shape:CircularNotchedRectangle(),
        color: Color(0xff047CFC),
        notchMargin: 5.0,
        elevation: 0,
    ),
    );
  }
}

class MenuLaporan extends StatelessWidget {
  MenuLaporan({this.icon, this.text, this.route});
  final IconData icon;
  final String text;
  final String route;
  static height(double height, BuildContext context) {
    return height * MediaQuery.of(context).size.height / 750.0587997700522;
  }

  static width(double width, BuildContext context) {
    return width * MediaQuery.of(context).size.width / 423.5293998850261;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(horizontal:5),
            child: Column(
              children: <Widget>[
                InkWell(
                  splashColor: Color(0xff0851a1),
                    child: Container(
                  height: 80,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15)),
                    shadowColor: Color(0xff0851a1),
                    elevation: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: FaIcon(
                            icon,
                            size: 40,
                            color: Color(0xff0851a1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10.0),
                          child: Text(
                            text,
                            style: TextStyle(color: Color(0xff0851a1)),
                          ),
                        )
                      ],
                    ),
                  ),
                ), onTap: (){
                  Navigator.pushNamed(context, route);
                },),
              ],
            ),
          );
  }
}
