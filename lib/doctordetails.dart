
import 'dart:ui';

import 'package:doctor/doctorslist.dart';
import 'package:flutter/material.dart';

class Doctordetails extends StatefulWidget {
  final doctors product;
  const Doctordetails({Key? key, required this.product}) : super(key: key);

  @override
  State<Doctordetails> createState() => _DoctordetailsState();
}

class _DoctordetailsState extends State<Doctordetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Details'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_horiz),
          )
        ],
        backgroundColor: Colors.green[400],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.product.image),
                      radius: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.product.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                          ],
                        ),
                        Text(
                          'Eye Specialist',
                          style: TextStyle(color: Colors.green, fontSize: 17),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Text(
                              widget.product.rate,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                  width: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Short Description',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Lorem ipsum dolor sit amet , consectetur adipiscing elit , t. UT enim ad minim veniam , quis nostrud exercitatioin ullamco',
                    style: TextStyle(fontSize: 18, color: Colors.grey[500]),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    ' Locationn',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text(
                      'St.Bronxlyn 212',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.asset('images/location.png'),
                   ),
                ),
                Container(
                    child: TextButton
                      (onPressed: () {  },
                      child: Text('Request' , style: TextStyle(color: Colors.white),),
                    ),
                  width: double.infinity,

                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.green,),

                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          onTap: (index) {},
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule), label: 'Schedule'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ]),
    );
  }
}
