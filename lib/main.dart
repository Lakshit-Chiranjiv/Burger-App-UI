import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Burger App UI',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  './assets/homeburger.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SafeArea(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'BURGER \nBUNS',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 320,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                const SizedBox(
                                  height: 90,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 10,
                                  color: Colors.orange[400]?.withOpacity(0.5),
                                ),
                                const SizedBox(
                                  height: 35,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 10,
                                  color: Colors.orange[400]?.withOpacity(0.5),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 60),
                              child: Text(
                                'Tasty Food \nGood Food *',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ])),
      ),
    );
  }
}
