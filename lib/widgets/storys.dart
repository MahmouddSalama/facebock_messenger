import 'package:facebock_messenger/models/users.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final Size size;

  const Story({required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: size.width,
        height: size.height * .1,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: ListView.builder(
          itemCount: usersList.length+1,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: index == 0
                  ? CircleAvatar(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.video_call,
                            color: Colors.black,
                            size: 30,
                          ),
                          Text(
                            'new',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      backgroundColor: Colors.white38,
                      radius: size.width * .0701,
                    )
                  : CircleAvatar(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child:usersList[index-1].onLine? CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 7,
                        ):null,
                      ),
                      radius: size.width * .071,
                      backgroundImage: NetworkImage(usersList[index-1].imagUrl),
                    ),
            );
          },
        ),
      ),
    );
  }
}
