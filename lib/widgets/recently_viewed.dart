import 'package:flutter/material.dart';

class RecentlyViewed extends StatelessWidget {
  final String name;
  final String price;
  final String status;
  final Color buttonColor;
  final String imagePath;
  const RecentlyViewed(
      {super.key,
      required this.name,
      required this.price,
      required this.status,
      required this.buttonColor,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black26)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black26)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13),
                  child: Image.asset(
                    imagePath,
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$price /per day",
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 70,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            decoration: BoxDecoration(
                color: buttonColor, borderRadius: BorderRadius.circular(5)),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                status,
                style: TextStyle(
                    color: buttonColor == Colors.black
                        ? Colors.white
                        : Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
