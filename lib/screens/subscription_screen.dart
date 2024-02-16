import 'package:flutter/material.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  List<Map<String,dynamic>> catImages = [
    {
      'image' : 'assets/list_products/a2_milk-removebg-preview.png',
      'title' : 'ALL PRODUCTS'
    },
    {
      'image' : 'assets/list_products/makhan-removebg-preview.png',
      'title' : 'MILK PRODUCTS'
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade50,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          "My Subscriptions",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.cyan.withOpacity(.4),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.cyan.shade800)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/list_products/subs-removebg-preview.png",
                      height: 150,
                      width: 150,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "No Subscription",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Pick from a variety of healthy\n & fresh products directly\n from farm to home",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Explore Category",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (_, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Stack(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(150),
                                      color: Colors.white
                                  ),
                                ),
                                Positioned(
                                    top: 5,
                                    height: 120,
                                    width: 120,
                                    child: Image(image: AssetImage(catImages[index]['image']),height: 250,width: 250,))
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(catImages[index]['title'],style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                        ],
                      );
                    }),)
          ],
        ),
      ),
    );
  }
}



