import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  final Size size;

  const Search({required this.size}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 55,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        color: Color(0xffF5F5F5),
        elevation: 0,
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        child: TextFormField(
          onChanged: (v){},
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 7),
              child: Text('new SMS'),
            ),
            border: InputBorder.none,
            hintText: 'Search',
            prefixIcon: Icon(Icons.search,color: Colors.black54,),
          ),

        ),
      ),
    );
  }
}
