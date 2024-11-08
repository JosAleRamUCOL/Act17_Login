import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      body: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget{
  const Cuerpo({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/0/0e/Atlanta_Zoo_Panda.jpg'),fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Etiqueta(), User(), Password(), BtnEntrar()],),
    );
  }
}

Widget Etiqueta(){
  return Container(child: 
  Center(child: Text('Sign in', style: TextStyle(color: Colors.white),),),
  );
}

Widget User(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
    child: Center(
      child: TextField(
        decoration: InputDecoration(hintText: 'User', fillColor: Colors.white, filled: true),
      )
    ),
  );
}

Widget Password(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
    child: Center(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(hintText: 'Password', fillColor: Colors.white, filled: true),
      )
    ),
  );
}

Widget BtnEntrar(){
  return ElevatedButton(
    onPressed: (){}, 
    child: Text('Intro NOW', style: TextStyle(fontSize: 15.0, color: Colors.black),),
  );
}