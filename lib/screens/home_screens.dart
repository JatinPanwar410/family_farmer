import 'package:family_farmer_2test/screens/seach_screen.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> proImage = [
    {
      'image': 'assets/list_products/ghee-removebg-preview.png',
      'title': 'SHUDH DESI GHEE',
      'quantity': '1L',
      'price': '₹3,999',
      'dispric': '₹3,499'
    },
    {
      'image': 'assets/list_products/a2_milk-removebg-preview.png',
      'title': 'FRESH A2 MILK',
      'quantity': '1L',
      'price': '₹150',
      'dispric': '₹99'
    },
    {
      'image': 'assets/list_products/paneer-removebg-preview.png',
      'title': 'SHUDH PANEER',
      'quantity': '1Kg',
      'price': '₹745',
      'dispric': '₹725'
    },
    {
      'image': 'assets/list_products/makhan-removebg-preview.png',
      'title': 'MAKHAN',
      'quantity': '1Kg',
      'price': '₹745',
      'dispric': '₹725'
    },
  ];
  List<Map<String, dynamic>> catImages = [
    {
      'image': 'assets/list_products/a2_milk-removebg-preview.png',
      'title': 'ALL PRODUCTS'
    },
    {
      'image': 'assets/list_products/makhan-removebg-preview.png',
      'title': 'MILK PRODUCTS'
    },
  ];
  int selectedIndex = 0;

  void onitemtap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget getbody() {
    switch (selectedIndex) {
      case 0:
        return HomePage();
      case 1:
        return productscreen();
      case 2:
        return subscriptionscreen();
      case 3:
        return referscreen();
      case 4:
        return settinscreen();
      default:
        return Container(); // Return a default widget for any case not specified
    }
  }

  Widget productscreen() {
    return Text("product screen");
  }

  Widget subscriptionscreen() {
    return Text("hello");
  }

  Widget referscreen() {
    return Text("hello");
  }

  Widget settinscreen() {
    return Text("jatin");
  }

  TextStyle mTextStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/FF-TM-SVG.png",
          height: 60,
          width: 60,
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Morning Delivery",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              "5am to 7:30am",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 2)),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.wallet,
                    size: 30,
                  ),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 360,
              color: Color(0xDDF4F8FF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Most popular products",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "view all >",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.green[800]),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 280,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Container(
                              width: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.green, width: 1)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  index == 1
                                      ? Container(
                                    height: 25,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(12)),
                                      gradient: LinearGradient(colors: [
                                        Colors.white,
                                        Colors.yellow
                                      ]),
                                    ),
                                    child: Center(
                                        child: Text(
                                          'Hormone Free',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500),
                                        )),
                                  )
                                      : SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                      child: Image(
                                        image: AssetImage(proImage[index]['image']),
                                        height: index == 1 ? 140 : 150,
                                        width: index == 1 ? 145 : 150,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      proImage[index]['title'],
                                      style: mTextStyle,
                                    ),
                                  ),
                                  SizedBox(
                                    height: index == 1 ? 1 : 4,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      proImage[index]['quantity'],
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(
                                    height: index == 1 ? 0 : 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          proImage[index]['price'],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                        SizedBox(width: 30),
                                        SizedBox(
                                          height: 30,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.green,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          8))),
                                              onPressed: () {},
                                              child: const Text(
                                                'Add',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                    height: 20,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: const [
                                          Colors.white,
                                          Colors.yellow
                                        ]),
                                        borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(10))),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          proImage[index]['dispric'],
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          'with',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          "VIP",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            Container(
              height: 400,
              width: double.infinity,
              color: Color(0xDDF4F8FF),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Shop By Category",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (_, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(150),
                                            color: Colors.white),
                                      ),
                                      Positioned(
                                          top: 5,
                                          height: 120,
                                          width: 120,
                                          child: Image(
                                            image: AssetImage(
                                                catImages[index]['image']),
                                            height: 250,
                                            width: 250,
                                          ))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  catImages[index]['title'],
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SizedBox(
              height: 35,
              width: 125,
              child: FloatingActionButton(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchScreen(),
                      ));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(UniconsLine.home),
            activeIcon: Icon(UniconsSolid.house_user),
          ),
          BottomNavigationBarItem(
              icon: Icon(UniconsLine.box),
              label: 'Products',
              activeIcon: Icon(UniconsSolid.bag)),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_membership_outlined),
              label: 'School',
              activeIcon: Icon(Icons.card_membership)),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outline),
              label: 'Settings',
              activeIcon: Icon(Icons.people)),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Settings',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onitemtap,
      ),
    );
  }
}
