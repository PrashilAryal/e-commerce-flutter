import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/widgets/widget_support.dart';
import 'package:flutter/widgets.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20,),
              Image.asset(
                'assets/bag.jpg',
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bag", style: AppWidget.semiBoldTextFieldStyle()),
                      Text("Backpack", style: AppWidget.boldTextFieldStyle()),
                    ],
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      if (itemCount > 1) {
                        --itemCount;
                      }
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(Icons.remove, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    itemCount.toString(),
                    style: AppWidget.semiBoldTextFieldStyle(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      ++itemCount;
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "This is detail about the item",
                maxLines: 3,
                style: AppWidget.LightTextFieldStyle(),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Delivery Time",
                    style: AppWidget.semiBoldTextFieldStyle(),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.alarm,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "30 mins",
                    style: AppWidget.semiBoldTextFieldStyle(),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: AppWidget.semiBoldTextFieldStyle(),
                        ),
                        Text(
                          "\$40",
                          style: AppWidget.semiBoldTextFieldStyle(),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Add to cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Poppins')),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            decoration: BoxDecoration(
                                // color: Colors.black,
                                ),
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
