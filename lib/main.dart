// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Home(),
  ));
}

// Widgets == Clases
class Home extends StatelessWidget{
  const Home({super.key});

  //El override redefine el metodo build de la clase padre
  @override
  Widget build(BuildContext context){
    return Scaffold( // <- Equivalente a un contenedor para las demas componentes (Widgtes)
      appBar: AppBar(
        title: Text("my first app"),
        centerTitle: true,
        backgroundColor: Colors.red[100],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/gal.png')
          //image: NetworkImage('https://images.unsplash.com/photo-1516339901601-2e1b62dc0c45?q=80&w=1571&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.yellow,
        child:  Text("click me"),
      ),
      
    );
  }
}

 
