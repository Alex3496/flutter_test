// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(100, 24, 195, 1),
      body: Form(
        //key: formulario,
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 450),
            child: Card(
              color: Color.fromARGB(255, 255, 255, 255),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Bienvenido al sistema",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ),
                    SizedBox( height: 6,),
                    SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Por favor, ingresa tus credenciales para Iniciar",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ),
                    ),
                    SizedBox(height:  30),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Email",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),
                    TextFormField(
                      //controller: _username,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if(value!.isEmpty) return "Por favor, inserte un email";
                        if(value.length > 40) return "El Email no pede ser mayor a 40 caracteres";
                        return null;
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        labelText: "example@mail.com"
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Contraseña",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),
                    TextFormField(
                      //controller: _password,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () => setState(() {
                            _showPassword = !_showPassword;
                          }),
                          child: Icon(color: Colors.black, _showPassword ? Icons.no_encryption_gmailerrorred : Icons.remove_red_eye)
                        )
                      ),
                      obscureText: !_showPassword,
                    ),
                    SizedBox(height:  25),
                    SizedBox(
                      width: double.infinity,
                      child: GestureDetector(
                        child:  Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "Iniciar Sesión",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ),
                    SizedBox( height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: GestureDetector(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 228, 227, 223),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "Crear Cuenta",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      ),
                    )
                  ],
                )
              ),
            )
          ),
        )
      )
    );
  }
}