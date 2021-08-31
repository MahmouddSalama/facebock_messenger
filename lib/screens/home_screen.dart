import 'package:facebock_messenger/models/users.dart';
import 'package:facebock_messenger/screens/images_screen.dart';
import 'package:facebock_messenger/screens/phoot.dart';
import 'package:facebock_messenger/widgets/messages_body.dart';
import 'package:facebock_messenger/widgets/search_widget.dart';
import 'package:facebock_messenger/widgets/storys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Chats',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'imges/user.png',
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Photo()));
              },
              icon: Icon(
                Icons.camera_alt,
                color: Colors.black,
              )),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ImagesScreen()));
            },
            icon: Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Search(size: size),
          Story(size: size),
          Messages(),
        ],
      ),
    );
  }
}
