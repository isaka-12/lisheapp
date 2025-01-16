import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("Lishe App",style: TextStyle(
          color: Colors.green,
          fontWeight:FontWeight.bold
        ),),
        centerTitle: true,
        
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
            
        children: [
          Text("Login", style: TextStyle(fontWeight: FontWeight.bold),)
        ],
            ),
      ),
      
    );
  }
}