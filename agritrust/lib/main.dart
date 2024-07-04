import 'package:flutter/material.dart';
void main(){
  runApp(const CSCDAY());
}



class CSCDAY extends StatelessWidget{
  const CSCDAY({super.key});


@override
  Widget build(BuildContext context) {
   return MaterialApp(
home: Scaffold(
  appBar: AppBar(title: const Text("cssssss")
),

body:Body()
   ),
   );
  }


}
class Body extends StatelessWidget{
@override
Widget build(BuildContext context) {
  return Center( 
    child: Text("hi"),
  );
}

}