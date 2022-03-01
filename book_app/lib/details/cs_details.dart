import 'dart:html';

import 'package:book_app/Pages/SignupPage/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:book_app/models/cs_model.dart';
class cs_bookdetails extends StatelessWidget {
  final Cs_Books book;
  const cs_bookdetails(this.book);
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
        backgroundColor: const Color(0xFF083663),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(book.imageurl,
            height: 500,),
            Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              book.edition,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
            ),
            ),

             Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              book.author,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize:20.0, fontWeight: FontWeight.bold),
            ),
            ),

             Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              book.description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20.0),
            ),
            ),
            Padding(
            padding: const EdgeInsets.all(10.0),
            child: 
            Column
              (children: <Widget>[
                ButtonTheme(
                  height: 5.0,
                  buttonColor: Color(0xFF083663),
                  child: RaisedButton(
                    onPressed: ()
                 {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  (SignInPage()),
                        )
                      );
                    },
                 child: const Text('Read', 
                  style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  
                  ),
                    ),
                ),
              ],
              ), 
            ), 
            
           ],
        ),
        
      ),
      ),

    );

  }
}