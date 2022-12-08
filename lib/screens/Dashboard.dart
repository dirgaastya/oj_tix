import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';
import 'package:oj_tix/component/BottomBar.dart';
import 'package:oj_tix/component/SearchBar.dart';

final listImage = [
  "assets/images/Poster1.png",
  "assets/images/Poster2.png",
  "assets/images/Poster3.png",
];

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BotBar(),
      backgroundColor: Color(0xffFCFCFC),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 23,
                  ),

                  // Display User------------------------------------------------------------------------
                  Container(
                    padding: EdgeInsets.fromLTRB(36, 0, 36, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Hallo Asjang'),
                        SizedBox(
                          width: 7.6,
                        ),
                        Image.asset('assets/images/account.png'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SearchBar(),
                  SizedBox(
                    height: 25,
                  ),

                  // Carousel------------------------------------------------------------------------------
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 36, 0),
                    child: Text(
                      'Featured Movies',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 210,
                    child: Slider(),
                  ),
                  SizedBox(
                    height: 33,
                  ),

                  //  List Content Movies -------------------------------------------------------------------
                  Container(
                    margin: EdgeInsets.fromLTRB(39, 0, 39, 39),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 15.0,
                                          offset: Offset(0.0, 0.75))
                                    ],
                                    color: Colors.white),
                                width: 144,
                                height: 240,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 144,
                                      height: 174,
                                      child: Image.asset(
                                        'assets/images/content.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text(
                                      'Perempuan Bergaun Merah',
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                )),
                            Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 15.0,
                                          offset: Offset(0.0, 0.75))
                                    ],
                                    color: Colors.white),
                                width: 144,
                                height: 240,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 144,
                                      height: 174,
                                      child: Image.asset(
                                        'assets/images/content.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text(
                                      'Perempuan Bergaun Merah',
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                )),
                          ],
                        ),
                        Gap(39),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 15.0,
                                          offset: Offset(0.0, 0.75))
                                    ],
                                    color: Colors.white),
                                width: 144,
                                height: 240,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 144,
                                      height: 174,
                                      child: Image.asset(
                                        'assets/images/content.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text(
                                      'Perempuan Bergaun Merah',
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                )),
                            Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 15.0,
                                          offset: Offset(0.0, 0.75))
                                    ],
                                    color: Colors.white),
                                width: 144,
                                height: 240,
                                child: Column(
                                  children: [
                                    Container(
                                      width: 144,
                                      height: 174,
                                      child: Image.asset(
                                        'assets/images/content.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text(
                                      'Perempuan Bergaun Merah',
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Slider extends StatefulWidget {
  Slider({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Slider> {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(
          listImage[index],
          fit: BoxFit.contain,
        );
      },
      viewportFraction: 0.7,
      scale: 0.8,
      itemCount: 2,
      autoplay: true,
    );
  }
}
