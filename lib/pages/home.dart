import 'package:e_commerce/widgets/widget_support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:e_commerce/pages/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool bag = false, camp = false, map = false, waterBottle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('WildGear Outfitters',
                    style: AppWidget.boldTextFieldStyle()),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(Icons.shopping_cart, color: Colors.white),
                )
              ],
            ),
            Text('Equip Your Adventure',
                style: AppWidget.normalTextFieldStyle()),
            SizedBox(height: 20),
            Text('Gears', style: AppWidget.HeadlineTextFieldStyle()),
            Text('Discover and Get Great',
                style: AppWidget.LightTextFieldStyle()),
            SizedBox(height: 10),
            showItem(),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Details()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/bag.jpg",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                'Backpack',
                                style: AppWidget.semiBoldTextFieldStyle(),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'Trekking Bag',
                                style: AppWidget.LightTextFieldStyle(),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                '\$50',
                                style: AppWidget.semiBoldTextFieldStyle(),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    margin: EdgeInsets.all(5),

                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/bag.jpg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Backpack',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Trekking Bag',
                              style: AppWidget.LightTextFieldStyle(),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              '\$50',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/bag.jpg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Backpack',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Trekking Bag',
                              style: AppWidget.LightTextFieldStyle(),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              '\$50',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/bag.jpg",
                              height: 150,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              'Backpack',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              'Trekking Bag',
                              style: AppWidget.LightTextFieldStyle(),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              '\$50',
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              // margin: EdgeInsets.only(right: 10),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Image.asset(
                        "assets/map.jpg",
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                       ),
                      SizedBox(width: 20,),
                      Column(children: [
                        Container(
                            width: MediaQuery.of(context).size.width/2,
                            child: Text('Antique Piece of Compass', style: AppWidget.semiBoldTextFieldStyle(),)),
                        Container(
                            width: MediaQuery.of(context).size.width/2,
                            child: Text('Do not get lost', style: AppWidget.LightTextFieldStyle(),)),
                        Container(
                            width: MediaQuery.of(context).size.width/2,
                            child: Text('\$40', style: AppWidget.semiBoldTextFieldStyle(),)),

                      ],)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            bag = true;
            camp = false;
            map = false;
            waterBottle = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                  color: bag ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "assets/bag.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: bag ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            bag = false;
            camp = true;
            map = false;
            waterBottle = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                  color: camp ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "assets/camp.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: camp ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            bag = false;
            camp = false;
            map = true;
            waterBottle = false;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                  color: map ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "assets/map.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: map ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            bag = false;
            camp = false;
            map = false;
            waterBottle = true;
            setState(() {});
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                  color: waterBottle ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.circular(8)),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                "assets/water-bottle.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
                color: waterBottle ? Colors.white : Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
