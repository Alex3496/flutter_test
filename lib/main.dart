// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'ui/public/login.dart';

void main() {
  runApp( MaterialApp(
    home: Login(),
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
        child: MaterialButton(
          onPressed: () => {
            print("you click me")
          },
          color: Colors.lightBlue,
          child: Text("click me"),
        )
        //child: Icon(
        //  Icons.airport_shuttle,
        //  color: Colors.amberAccent,
        //  size: 50,
        //)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.yellow,
        child:  Text("click me"),
      ),
      
    );
  }
}

 
