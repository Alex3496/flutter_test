// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold( // <- Equivalente a un contenedor para las demas componentes (Widgtes)
      appBar: AppBar(
        title: Text("my first app"),
        centerTitle: true,
        backgroundColor: Colors.red[100],
      ),
      body: Center(
        child: Text(
          "text center",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color:  Colors.grey,
            fontFamily: "Inter"
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.yellow,
        child:  Text("click"),
      ),
      
    ),
  ));
}

 
