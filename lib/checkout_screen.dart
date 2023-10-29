import 'package:bike_renting_app/main.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {

  DateTime dateTime = DateTime.now();
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
              "Check Out",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
            ),
          ),
        ],
      )),
      body: Container(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(18)),
              child: Column(
                children: [
                  InkWell(
                    onTap: () async {
                      DateTime? startDateTime = await showDatePicker(
                          context: context,
                          initialDate: dateTime,
                          firstDate: DateTime(2023),
                          lastDate: DateTime(2024));

                      if (startDateTime != null) {
                        setState(() {
                          dateTime = startDateTime;
                        });
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 60, right: 15, top: 5, bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      'Start Date',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      '${dateTime.day}-${dateTime.month}-${dateTime.year}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
                                          letterSpacing: 1.2),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.calendar_month,
                                  size: 30,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () async {
                            DateTime? newData = await showDatePicker(
                                context: context,
                                initialDate: dateTime,
                                firstDate: DateTime(2023),
                                lastDate: DateTime(2025));

                            if (newData != null) {
                              setState(() {
                                dateTime = newData;
                              });
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 60, right: 15, top: 5, bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'End Date',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      '${dateTime.day}-${dateTime.month}-${dateTime.year}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 17,
                                          letterSpacing: 1.2),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.calendar_month,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(6),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(7)),
              child: const Text(
                'Apply coupon',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(
              height: mq.size.height * 0.03,
            ),
            const Text(
              'Details',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Days',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                    Text('4',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Rent',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        )),
                    Text('Rs 5996',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Additional Items',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Rs 6440',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Coupon Discount',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        )),
                    Text('Rs 396',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15,
                        )),
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Amount',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Rs 12000',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: mq.size.height * 0.05,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "PAY",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
