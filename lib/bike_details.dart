import 'package:bike_renting_app/checkout_screen.dart';
import 'package:bike_renting_app/constants/constants.dart';
import 'package:bike_renting_app/main.dart';
import 'package:bike_renting_app/widgets/custom_bottom_naviagtion_bar.dart';
import 'package:bike_renting_app/widgets/recently_viewed.dart';
import 'package:flutter/material.dart';

class BikeDetailsScreen extends StatelessWidget {
  const BikeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          SizedBox(
            width: mq.size.width * 0.05,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(20)),
            child: const Text(
              "Bike Details",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
            ),
          ),
        ],
      )),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Indian',
                          style: TextStyle(fontSize: 25, color: Colors.black87),
                        ),
                        const Text(
                          'Scout Bobbar',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: mq.size.height * 0.025,
                        ),
                        Container(
                          width: mq.size.width * 0.4,
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 10,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black26),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Category',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black38,
                                ),
                              ),
                              Text(
                                'Cruisor',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: mq.size.height * 0.025,
                        ),
                        Container(
                          width: mq.size.width * 0.4,
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 10,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black26),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Displacement',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black38,
                                ),
                              ),
                              Text(
                                '1100 cc',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: mq.size.height * 0.025,
                        ),
                        Container(
                          width: mq.size.width * 0.4,
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 5,
                            left: 10,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black26),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Max. Speed',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black38,
                                ),
                              ),
                              Text(
                                '124 km/h',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        color: Colors.red,
                        width: mq.size.width * 0.45,
                        height: mq.size.height * 0.35,
                        child: Image.asset(
                          'assets/bike2.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CheckoutScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: 4,
                            bottom: 4,
                            left: 10,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15)),
                          width: mq.size.width * 0.45,
                          child: const Column(
                            children: [
                              Text(
                                'Rent',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                              Text(
                                '1499/per day',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: mq.size.height * 0.03,
              ),
              Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        'Add',
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
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return RecentlyViewed(
                          imagePath: outfitImagePath[index],
                          name: outfits[index],
                          price: price[index].toString(),
                          status: outfitStatus[index].toString(),
                          buttonColor: outfitStatus[index] == 'Add'
                              ? Colors.grey.shade300
                              : Colors.black,
                        );
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
