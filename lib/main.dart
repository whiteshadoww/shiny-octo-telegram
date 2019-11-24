import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_pin/util.dart';

void main() => runApp(MyApp());

var kPrimaryColor = Color(0xff1B2028);
var kNampadTextColor = Color(0xff487870);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOTP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
//        primarySwatch: Colors.blue,
          primaryColor: kPrimaryColor,
          backgroundColor: kPrimaryColor),
      home: MyHomePage(
        title: "Snowshadow OTP",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var pin = [];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance =
        ScreenUtil(width: 1080, height: 2280, allowFontScaling: true)
          ..init(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "ABC BANK.COM",
              style: TextStyle(color: Color(0xffCACBCD), fontSize: sp(80)),
            ),
            SizedBox(
              height: h(230),
            ),
            Center(
              child: Container(
                  width: w(480),
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            width: w(80),
                            height: w(80),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  w(80 / 2),
                                )),
                          ),
                          pin.length < 1
                              ? SizedBox.shrink()
                              : Container(
                                  width: w(80),
                                  height: w(80),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: w(65),
                                      height: w(65),
                                      decoration: BoxDecoration(
                                          color: kPrimaryColor,
                                          borderRadius: BorderRadius.circular(
                                            w(65 / 2),
                                          )),
                                    ),
                                  ),
                                )
                        ],
                      ),
                      SizedBox(width: w(50)),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: w(80),
                            height: w(80),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  w(80 / 2),
                                )),
                          ),
                          pin.length < 2
                              ? SizedBox.shrink()
                              : Container(
                                  width: w(80),
                                  height: w(80),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: w(65),
                                      height: w(65),
                                      decoration: BoxDecoration(
                                          color: kPrimaryColor,
                                          borderRadius: BorderRadius.circular(
                                            w(65 / 2),
                                          )),
                                    ),
                                  ),
                                )
                        ],
                      ),
                      SizedBox(width: w(50)),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: w(80),
                            height: w(80),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  w(80 / 2),
                                )),
                          ),
                          pin.length < 3
                              ? SizedBox.shrink()
                              : Container(
                                  width: w(80),
                                  height: w(80),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: w(65),
                                      height: w(65),
                                      decoration: BoxDecoration(
                                          color: kPrimaryColor,
                                          borderRadius: BorderRadius.circular(
                                            w(65 / 2),
                                          )),
                                    ),
                                  ),
                                )
                        ],
                      ),
                      SizedBox(width: w(50)),
                      Stack(
                        children: <Widget>[
                          Container(
                            width: w(80),
                            height: w(80),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  w(80 / 2),
                                )),
                          ),
                          pin.length < 4
                              ? SizedBox.shrink()
                              : Container(
                                  width: w(80),
                                  height: w(80),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: w(65),
                                      height: w(65),
                                      decoration: BoxDecoration(
                                          color: kPrimaryColor,
                                          borderRadius: BorderRadius.circular(
                                            w(65 / 2),
                                          )),
                                    ),
                                  ),
                                )
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: h(100),
            ),
            Text(
              "Enter your OTP pin",
              style: TextStyle(color: Color(0xff4F535A), fontSize: sp(40)),
            ),
            SizedBox(
              height: h(40),
            ),
            Text(
              "ayiembaeb@gmail.com",
              style: TextStyle(color: Color(0xffFFFFFF), fontSize: sp(45)),
            ),
            Center(
              child: Container(
                width: w(900),
                height: h(950),
                child: CustomScrollView(
                  primary: false,
                  slivers: <Widget>[
                    SliverPadding(
                      padding: const EdgeInsets.all(20),
                      sliver: SliverGrid.count(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        children: List(9)
                            .asMap()
                            .map((k, m) {
                              return MapEntry(
                                  k,
                                  InkWell(
                                    splashFactory: CustomSplashFactory(),
                                    onTap: () {
                                      addPin(k + 1);
                                    },
                                    child: Container(
                                        padding: const EdgeInsets.all(8),
                                        child: Center(
                                          child: Text(
                                            "${k + 1}",
                                            style: TextStyle(
                                                fontSize: sp(150),
                                                fontWeight: FontWeight.w400,
                                                color: kNampadTextColor),
                                          ),
                                        )),
                                  ));
                            })
                            .values
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: w(750),
              child: Align(
                alignment: Alignment.topRight,
                child: Row(
                  children: <Widget>[
                    Spacer(),
                    Container(
                      child: InkWell(
                          splashFactory: CustomSplashFactory(),
                          onTap: () {
                            addPin(0);
                          },
                          child: Container(
                            height: w(200),
                            width: w(200),
                            child: Center(
                              child: Text(
                                "0",
                                style: TextStyle(
                                    fontSize: sp(150),
                                    fontWeight: FontWeight.w400,
                                    color: kNampadTextColor),
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: w(50),
                    ),
                    Container(
                      child: InkWell(
                          splashFactory: CustomSplashFactory(),
                          onTap: () {
                            addPin(0);
                          },
                          child: Container(
                            height: w(200),
                            width: w(200),
                            child: IconButton(
                              onPressed: () {
                                if (this.pin.isNotEmpty) this.pin.removeLast();
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.backspace,
                                size: w(110),
                                color: kNampadTextColor,
                              ),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: w(30),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height:h(90)),
            Text(
              "RESEND",
              style: TextStyle(color: Color(0xff4F535A), fontSize: sp(45)),
            ),
          ],
        ),
      ),
    );
  }

  addPin(int pin) {
    if (this.pin.length <= 3) {
      this.pin.add(pin);
      setState(() {});
    }
  }
}
