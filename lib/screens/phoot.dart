import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Photo extends StatefulWidget {
  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {

   File? _image;
  final picker=ImagePicker();

  Future getImage(ImageSource crs) async{
    final pickerFile= await picker.getImage(source: crs);
    setState(() {
      if(pickerFile!=null)
      {
        _image=File(pickerFile.path);

      }
      else {
        print('No photo');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
      return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          _image==null?  Text(
              "No Photo Select",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ):Image.file(_image!,),
            ElevatedButton(
              onPressed: (){
                final dialog=AlertDialog(
                  title: Text('chose'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  content: Container(
                    width: size.width*.6,
                    height: size.height*.15,
                    child: Column(
                      children: [
                        TextButton(onPressed: (){
                            getImage(ImageSource.camera);
                            Navigator.pop(context);
                        }, child: Text('Camera'),),
                        TextButton(onPressed: (){
                          getImage(ImageSource.gallery);
                          Navigator.pop(context);
                        }, child: Text('Gallery'),),
                      ],
                    ),
                  ),

                );
                showDialog(context: context, builder: (_)=>dialog);
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
                ),
                alignment: Alignment.center,
                child: Text('Photo',style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
