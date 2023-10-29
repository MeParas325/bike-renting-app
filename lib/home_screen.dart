import 'package:bike_renting_app/bike_details.dart';
import 'package:bike_renting_app/constants/constants.dart';
import 'package:bike_renting_app/main.dart';
import 'package:bike_renting_app/widgets/custom_bottom_naviagtion_bar.dart';
import 'package:bike_renting_app/widgets/recently_viewed.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: mq.size.width * 0.06,
                            backgroundImage:
                                const AssetImage('assets/test.jpg'),
                          ),
                          SizedBox(
                            width: mq.size.width * 0.025,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Krishna SN',
                                style: TextStyle(
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mq.size.height * 0.02,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          fillColor: Colors.grey[200],
                          filled: true,
                          contentPadding: const EdgeInsets.all(15),
                          prefixIcon: Icon(
                            Icons.search,
                            size: mq.size.width * 0.075,
                            color: Colors.grey[400],
                          ),
                          hintText: 'Search bike',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: mq.size.height * 0.03,
                ),

                // All categories
                SizedBox(
                  height: mq.size.width * 0.15,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Chip(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            side: index == 1
                                ? const BorderSide(
                                    color: Color.fromRGBO(245, 247, 249, 1))
                                : const BorderSide(color: Colors.black),
                            backgroundColor:
                                index == 1 ? Colors.black : Colors.white,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 3, vertical: 10),
                            label: Text(
                              categories[index],
                            ),
                            labelStyle: TextStyle(
                                color: index == 1 ? Colors.white : Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        );
                      }),
                ),

                SizedBox(height: mq.size.height * 0.03),

                Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Popular',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' items',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: mq.size.height * 0.02,
                    ),
                    SizedBox(
                      height: mq.size.height * 0.25,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BikeDetailsScreen()));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/bike.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            subBrand[index],
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text(
                                            brand[index],
                                            style: const TextStyle(
                                              fontSize: 15,
                                            ),
                                          ),
                                          Text(
                                              "${price[index].toString()} /per day"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: mq.size.height * 0.03,
                    ),
                    Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Recently',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              ' viewed',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mq.size.height * 0.02,
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return RecentlyViewed(
                                imagePath: recentlyViewedBikes[index],
                                name: recentlyViewedItem[index],
                                price: price[index].toString(),
                                status: status[index],
                                buttonColor: status[index] == 'Booked'
                                    ? Colors.grey.shade300
                                    : Colors.black,
                              );
                            }),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
