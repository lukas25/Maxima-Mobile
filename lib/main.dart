import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gm_mobile/FormLaporan.dart';
import './dashboard.dart';
import './laporan.dart';
import './style.dart';
import './FormLaporan.dart';
import './Shift.dart';
import './Register.dart';
import './CommandCenter.dart';
import './Attendance.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                textTheme: TextTheme(title: AppbarStyle),
                color: Color(0xff047CFC)),
            textTheme:
                TextTheme(body1: BodyThemeStyle, body2: BodyThemeStyleWhite)),
        home: SplashScreen(),
        routes: {
          '/laporan': (context) => Laporan(),
          '/laporanKendaraan': (context) => FormKendaraan(),
          '/Myshift': (context) => WeeklyShift(),
          '/PatrolReport': (context) => PatrolReport(),
          '/HubCommando': (context) => CallCommand(),
          '/Attendance': (context) => LiveAttendance(),
          '/GuestBooks':(context)=>GuestBooks(),
        });
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(new MaterialPageRoute(
            builder: (BuildContext context) => new LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/Splash.png"), fit: BoxFit.cover),
          )),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 200 *
                          MediaQuery.of(context).size.height /
                          750.0587997700522,
                      width: 200 *
                          MediaQuery.of(context).size.width /
                          423.5293998850261,
                      child: CircleAvatar(
                          backgroundColor: Color.fromRGBO(255, 255, 255, 0.9),
                          child: Image(
                            image: AssetImage("img/GadaLogo.png"),
                            height: 150,
                            width: 150,
                          )),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                      "MAXIMA",
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: "CinzelDecorative",
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                )),
            Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.all(15)),
                    Text(
                      "Waiting Fetch Data",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    )
                  ],
                ))
          ])
        ],
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/Splash.png"), fit: BoxFit.cover),
          )),
          Container(
              child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 100),
                child: CircleAvatar(
                    radius: 40 *
                        MediaQuery.of(context).size.height /
                        750.0587997700522,
                    backgroundColor: Color.fromRGBO(255, 255, 255, 0.8),
                    child: Image(
                      image: AssetImage("img/GadaLogo.png"),
                      height: 50 *
                          MediaQuery.of(context).size.height /
                          750.0587997700522,
                      width: 50 *
                          MediaQuery.of(context).size.width /
                          423.5293998850261,
                    )),
              ),
              Center(
                  child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        'Maxima',
                        style: TextStyle(
                          fontSize: 40 *
                              MediaQuery.of(context).size.height /
                              750.0587997700522,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 1
                            ..color = Colors.white,
                        ),
                      ),
                      // Solid text as fill.
                      Text(
                        'Maxima',
                        style: TextStyle(
                          fontSize: 40 *
                              MediaQuery.of(context).size.height /
                              750.0587997700522,
                          color: Color.fromRGBO(234, 203, 41, 1),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "'Where Security Meet Technology'",
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  )
                ],
              )),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: Colors.white,
                    elevation: 10,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Center(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 14.0),
                            child: Text(
                              "Masuk ke akun",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25),
                            ),
                          )),
                          TextField(
                            decoration: InputDecoration(
                                labelText: "Username",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:15.0),
                            child: Center(child: GestureDetector(
                              child: Text("Lupa Password atau Username", style: TextStyle(color:Colors.red,fontSize:15),),
                              onTap: (){},
                            ) ),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 80),
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
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Dashboard()));
                                },
                                child: (Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    elevation: 15,
                                    color: Colors.transparent,
                                    child: Center(
                                        child: Text("Masuk",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22))))),
                              )),
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Belum punya Akun ?",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15)),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                                      },
                                      child: Text(" Daftar di sini",
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 15)))
                                ],
                              )),
                        ],
                      ),
                    ),
                  ))
            ],
          )),
        ],
      ),
    );
  }
}


