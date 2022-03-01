import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:book_app/details/cs_details.dart';
import 'package:book_app/models/cs_model.dart';


class computerscience extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Computer Science Books'),
        ),
        body: ListView.builder(itemCount:booklist.length, itemBuilder: (context, index){
          Cs_Books cs_book = booklist[index];
          return Card(
            child: ListTile(
              title: Text(cs_book.title),
              subtitle: Text(cs_book.edition.toString(),),
              leading: Image.network(cs_book.imageurl),
             onTap: () {
               Navigator.push(
                 context, MaterialPageRoute(builder: (context) => cs_bookdetails(cs_book)));
             },

            )
          );
          
        }),

    );
  }
}
