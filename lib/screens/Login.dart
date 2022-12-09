// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OJ-TICKET',
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme,
      )),
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color(0xFFF9F9F9),
          bottomNavigationBar: Container(
            width: 50,
            height: 50,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image(
                  image: AssetImage('assets/images/arrow-up.png'),
                )),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 240,
                      ),
                      Text(
                        'OJ-Tix',
                        style: TextStyle(
                            color: Color(0xFF407BFF),
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'KAMU NEANYA?',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 3),
                      ),
                      SizedBox(
                        height: 37,
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: TextField(
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide:
                                          BorderSide(color: Color(0xFF407BFF))),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xFFB3CAFF), width: 1),
                                      borderRadius: BorderRadius.circular(15)),
                                  labelText: 'Email'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: TextField(
                              obscureText: true,
                              enableSuggestions: false,
                              autocorrect: false,
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      borderSide:
                                          BorderSide(color: Color(0xFF407BFF))),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xFFB3CAFF), width: 1),
                                      borderRadius: BorderRadius.circular(15)),
                                  labelText: 'Password'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: 179,
                        height: 43,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFF407BFF),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/dashboard');
                          },
                          child: Text(
                            "SIGN IN",
                            style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 15,
                                letterSpacing: 3,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image(
                        image: AssetImage('assets/images/line.png'),
                        width: 170,
                        height: 1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Lupa Password Anda ?',
                        style:
                            TextStyle(color: Color(0xFF1E282D), fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
