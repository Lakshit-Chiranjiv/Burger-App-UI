import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({Key? key}) : super(key: key);

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  int tab = 0;

  List burgerData = [
    {
      'name': 'Beef burger 1',
      'image': './assets/burger1.jpg',
      'price': '\$ 12.99',
      'rating': '4.8',
      'distance': '5.2 km'
    },
    {
      'name': 'Beef burger 2',
      'image': './assets/burger2.jpg',
      'price': '\$ 07.99',
      'rating': '4.3',
      'distance': '4.7 km'
    },
    {
      'name': 'Beef burger 3',
      'image': './assets/burger3.jpg',
      'price': '\$ 17.99',
      'rating': '4.9',
      'distance': '2.5 km'
    },
    {
      'name': 'Beef burger 4',
      'image': './assets/burger4.jpg',
      'price': '\$ 13.99',
      'rating': '4.6',
      'distance': '5.8 km'
    },
    {
      'name': 'Beef burger 5',
      'image': './assets/burger5.jpg',
      'price': '\$ 19.99',
      'rating': '5.0',
      'distance': '8.5 km'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
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
                          onTap: () {
                            setState(() {
                              tab = 0;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: tab == 0
                                  ? Colors.blue.shade400.withOpacity(0.4)
                                  : Colors.transparent,
                              border: Border.all(
                                color: tab == 0
                                    ? Colors.green.shade400
                                    : Colors.grey.shade400,
                                width: 2,
                              ),
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  '🍖',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Beef',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: tab == 0
                                          ? Colors.black
                                          : Colors.grey.shade500),
                                )
                              ],
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              tab = 1;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: tab == 1
                                  ? Colors.blue.shade400.withOpacity(0.4)
                                  : Colors.transparent,
                              border: Border.all(
                                color: tab == 1
                                    ? Colors.green.shade400
                                    : Colors.grey.shade400,
                                width: 2,
                              ),
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  '🧀',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Cheese',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: tab == 1
                                          ? Colors.black
                                          : Colors.grey.shade500),
                                )
                              ],
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              tab = 2;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: tab == 2
                                  ? Colors.blue.shade400.withOpacity(0.4)
                                  : Colors.transparent,
                              border: Border.all(
                                color: tab == 2
                                    ? Colors.green.shade400
                                    : Colors.grey.shade400,
                                width: 2,
                              ),
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  '🍕',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Pizza',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: tab == 2
                                          ? Colors.black
                                          : Colors.grey.shade500),
                                )
                              ],
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              tab = 3;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: tab == 3
                                  ? Colors.blue.shade400.withOpacity(0.4)
                                  : Colors.transparent,
                              border: Border.all(
                                color: tab == 3
                                    ? Colors.green.shade400
                                    : Colors.grey.shade400,
                                width: 2,
                              ),
                            ),
                            child: Center(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '🍥',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Ramen',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: tab == 3
                                          ? Colors.black
                                          : Colors.grey.shade500),
                                )
                              ],
                            )),
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
                    Text(
                      'Most Popular',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                      ),
                    ),
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
                      height: 300,
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
                        childAspectRatio: MediaQuery.of(context).size.width / (MediaQuery.of(context).size.height/2)),
                        itemCount: burgerData.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Text('${burgerData[index]['name']}'),
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                            ),
                          );
                        }),
                    )),
                Visibility(
                    visible: tab == 1,
                    child: Container(
                      width: double.infinity,
                      color: Colors.green,
                      height: 300,
                    )),
                Visibility(
                    visible: tab == 2,
                    child: Container(
                      width: double.infinity,
                      color: Colors.red,
                      height: 300,
                    )),
                Visibility(
                    visible: tab == 3,
                    child: Container(
                      width: double.infinity,
                      color: Colors.yellow,
                      height: 300,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
