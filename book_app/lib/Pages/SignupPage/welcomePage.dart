import 'dart:js';
import 'dart:html';

import 'package:book_app/booklist/cs_booklist.dart';
import 'package:book_app/models/cs_model.dart';
import 'package:flutter/material.dart';
import 'package:book_app/Pages/SignupPage/LoginPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'ALU Book Library';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView(
          children: [
            textSection,
            categoryOne,
            categorySection,
            categoryTwo,
            categorySection,
            categoryThree,
            categorySection,
            categoryFour,
            categorySection,
            categoryFour,
            categorySection,
          ],
        ),
      ),
    );
  }
}



Widget categorySection = Container(
  padding: const EdgeInsets.symmetric(vertical: 10.0),
  height: 220.0,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      Image.network(
        'https://images.unsplash.com/photo-1495446815901-a7297e633e8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9va3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        width: 300,
        height: 200,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Ym9va3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        width: 300,
        height: 200,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://images.unsplash.com/photo-1495640452828-3df6795cf69b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJvb2tzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        width: 300,
        height: 200,
        fit: BoxFit.cover,
      ),
      Image.network(
        'https://images.unsplash.com/photo-1529473814998-077b4fec6770?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGJvb2tzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        width: 300,
        height: 200,
        fit: BoxFit.cover,
      ),
    ],
  ),
);

Widget textSection = const Padding(
  padding: EdgeInsets.all(16),
  child: Text(
    'ALU Library is a collection of e-learning books, artricles, documentaries and resources at large that are freely accessible to the ALU community.'
    'Any member who has the ALU email can be able to access the library',
    softWrap: true,
    style: TextStyle(fontSize: 18),
  ),
);

Widget categoryOne = Padding(
  padding: EdgeInsets.all(16),
  child: Column(
    children: [
      ElevatedButton(onPressed: () => (computerscience()),
      child: 
      const Text('Computer Science Resources')
      ),]
  ),
);


Widget categoryTwo =  Padding(
  padding: EdgeInsets.all(16),
  child: Column(
    children: [
      ElevatedButton(onPressed: 
      () {}, 
      child: 
      const Text('International Business And Trade')
      ),]
  ),
);

Widget categoryThree =  Padding(
  padding: EdgeInsets.all(16),
  child: Column(
    children: [
      ElevatedButton(onPressed: 
      () {}, 
      child: 
      const Text('Entrepreneurship Resources')
      ),]
  ),
);

Widget categoryFour =  Padding(
  padding: EdgeInsets.all(16),
  child: Column(
    children: [
      ElevatedButton(onPressed: 
      () {}, 
      child: 
      const Text('Global Challenges Resources')
      ),]
  ),
);






