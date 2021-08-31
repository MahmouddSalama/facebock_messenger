import 'package:facebock_messenger/models/users.dart';
import 'package:flutter/material.dart';
class Messages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: usersList.length,
        itemBuilder: (_,index){
          return ListTile(
            leading: CircleAvatar(
              child: Align(
                alignment: Alignment.bottomRight,
                child: usersList[index].onLine?CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 7,
                ):null,
              ),
              radius:30,
              backgroundImage: NetworkImage(usersList[index].imagUrl),
            ),
            title: Text(usersList[index].name),
            subtitle: Text(usersList[index].msg,style: TextStyle(
              fontWeight: usersList[index].isRead?FontWeight.w400:FontWeight.w900,
            ),),
            trailing:usersList[index].isSend==true? Icon(Icons.check_circle):null,
          );
        },
      ),
    );
  }
}
