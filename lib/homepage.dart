import 'package:flutter/material.dart';

import 'doctordetails.dart';
import 'doctorlistoption.dart';
import 'doctorslist.dart';

class homepage extends StatefulWidget {
    @override
  State<homepage> createState() => _homepageState();

}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text('Doctor List'),
          actions: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_horiz),
          )],
        backgroundColor: Colors.green[400],
           ),
      body:  ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: Doctorlist.length,
        itemBuilder: (context, index) => ProductList(
          product: Doctorlist[index],
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Doctordetails(
                  product: Doctorlist[index],
                ),
              ),
            );
          }, key: null,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          onTap: (index) {

          },
          items: [
            BottomNavigationBarItem( icon: Icon(Icons.home) ,label: 'Home'),
            BottomNavigationBarItem( icon: Icon(Icons.notifications) ,label: 'Notification'),
            BottomNavigationBarItem( icon: Icon(Icons.schedule) ,label: 'Schedule'),
            BottomNavigationBarItem( icon: Icon(Icons.person) ,label: 'Profile')
          ]
      ),
    );
  }
}
