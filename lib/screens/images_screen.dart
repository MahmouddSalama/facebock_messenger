import 'package:facebock_messenger/models/users.dart';
import 'package:flutter/material.dart';

class ImagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        children: usersList.map((e) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5,
          vertical: 5),
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(e.imagUrl,fit: BoxFit.fill,),
            ),
          ),
        )).toList() ,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2/3,
        ),
      ),
    );
  }
}
