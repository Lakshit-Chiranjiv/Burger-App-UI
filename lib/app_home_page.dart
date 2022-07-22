import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {

  int tab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                //topbar
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(3, 3),
                                color: Colors.brown.shade200.withOpacity(0.5),
                                blurRadius: 8,
                              )
                            ]),
                        child: const Center(
                          child: Icon(Icons.menu),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.shade200,
                        ),
                        child: Center(
                          child: Image.asset('./assets/burger_profile.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                //main text
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Find and order',
                        style: GoogleFonts.poppins(
                          fontSize: 36,
                        ),
                      ),
                      Text(
                        'Burger for you 🍔',
                        style: GoogleFonts.poppins(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                //searchbar
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Find your Burger',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //tabs 
                Container(
                  width: double.infinity,
                  height: 80,
                  // color: Colors.orange.shade200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              tab = 0;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: tab==0 ? Colors.blue.shade400.withOpacity(0.4) : Colors.transparent,
                              border: Border.all(
                                color: tab == 0 ? Colors.green.shade400 : Colors.grey.shade400,
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('🍖', style: TextStyle(
                                    fontSize: 16,
                                  ),),
                                  SizedBox(width: 5,),
                                  Text('Beef', style: TextStyle(
                                    fontSize: 16,
                                    color: tab==0 ? Colors.black : Colors.grey.shade500
                                  ),)
                                ],
                              )
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              tab = 1;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: tab==1 ? Colors.blue.shade400.withOpacity(0.4) : Colors.transparent,
                              border: Border.all(
                                color: tab == 1 ? Colors.green.shade400 : Colors.grey.shade400,
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('🧀', style: TextStyle(
                                    fontSize: 16,
                                  ),),
                                  SizedBox(width: 5,),
                                  Text('Cheese', style: TextStyle(
                                    fontSize: 16,
                                    color: tab==1 ? Colors.black : Colors.grey.shade500
                                  ),)
                                ],
                              )
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              tab = 2;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: tab==2 ? Colors.blue.shade400.withOpacity(0.4) : Colors.transparent,
                              border: Border.all(
                                color: tab == 2 ? Colors.green.shade400 : Colors.grey.shade400,
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('🍕', style: TextStyle(
                                    fontSize: 16,
                                  ),),
                                  SizedBox(width: 5,),
                                  Text('Pizza', style: TextStyle(
                                    fontSize: 16,
                                    color: tab==2 ? Colors.black : Colors.grey.shade500
                                  ),)
                                ],
                              )
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              tab = 3;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: tab==3 ? Colors.blue.shade400.withOpacity(0.4) : Colors.transparent,
                              border: Border.all(
                                color: tab == 3 ? Colors.green.shade400 : Colors.grey.shade400,
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('🍥', style: TextStyle(
                                    fontSize: 16,
                                  ),),
                                  SizedBox(width: 5,),
                                  Text('Ramen', style: TextStyle(
                                    fontSize: 16,
                                    color: tab==3 ? Colors.black : Colors.grey.shade500
                                  ),)
                                ],
                              )
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Most Popular', style: GoogleFonts.poppins(
                      fontSize: 20,
                    ),),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Visibility(
                  visible: tab == 0,
                  child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                  height: 500,
                )),
                Visibility(
                  visible: tab == 1,
                  child: Container(
                  width: double.infinity,
                  color: Colors.green,
                  height: 100,
                )),
                Visibility(
                  visible: tab == 2,
                  child: Container(
                  width: double.infinity,
                  color: Colors.red,
                  height: 100,
                )),
                Visibility(
                  visible: tab == 3,
                  child: Container(
                  width: double.infinity,
                  color: Colors.yellow,
                  height: 100,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
