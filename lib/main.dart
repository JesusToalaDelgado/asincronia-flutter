import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jesussmir_flutterasincronia/services/mockapi.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int rayotext = 0;
  double rayoancho = 0;
  int rayosegundos = 0;
  int rayo = 0;
  int maquinatext = 0;
  double maquinaancho = 0;
  int maquinasegundos = 0;
  int maquina = 0;
  int personatext = 0;
  double personaancho = 0;
  int personasegundos = 0;
  int persona = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asincronia',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Jesus Smith Toala Delgado 7moB",
              style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  FloatingActionButton(
                      onPressed: () async {
                        setState(() {
                          personaancho = 200;
                          personasegundos = 10;
                        });
                        persona = await MockApi().getFisherPriceInteger();
                        setState(() {
                          personatext = persona;
                          personaancho = 0;
                          personasegundos = 0;
                        });
                      },
                      backgroundColor: Colors.red,
                      child: const Icon(
                        Icons.directions_walk,
                        color: Colors.black,
                      )),
                  AnimatedContainer(
                    width: personaancho,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.red),
                    duration: Duration(seconds: personasegundos),
                  ),
                  Text(
                    personatext.toInt().toString(),
                    style: const TextStyle(color: Colors.red, fontSize: 25.0),
                  )
                ],
              ),
              Column(
                children: [
                  FloatingActionButton(
                      onPressed: () async {
                        setState(() {
                          maquinaancho = 200;
                          maquinasegundos = 3;
                        });
                        maquina = await MockApi().getHyundaiInteger();
                        setState(() {
                          maquinatext = maquina;
                          maquinaancho = 0;
                          maquinasegundos = 0;
                        });
                      },
                      backgroundColor: Colors.yellow,
                      child: const Icon(
                        Icons.airport_shuttle,
                        color: Colors.black,
                      )),
                  AnimatedContainer(
                    width: maquinaancho,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.yellow),
                    duration: Duration(seconds: maquinasegundos),
                  ),
                  Text(
                    maquinatext.toInt().toString(),
                    style:
                        const TextStyle(color: Colors.yellow, fontSize: 25.0),
                  )
                ],
              ),
              Column(
                children: [
                  FloatingActionButton(
                    onPressed: () async {
                      setState(() {
                        rayoancho = 200;
                        rayosegundos = 1;
                      });
                      rayo = await MockApi().getFerrariInteger();
                      setState(() {
                        rayotext = rayo;
                        rayoancho = 0;
                        rayosegundos = 0;
                      });
                    },
                    backgroundColor: Colors.green,
                    child: const Icon(
                      Icons.flash_on,
                      color: Colors.black,
                    ),
                  ),
                  AnimatedContainer(
                    width: rayoancho,
                    height: 15,
                    decoration: const BoxDecoration(color: Colors.green),
                    duration: Duration(seconds: rayosegundos),
                  ),
                  Text(
                    rayotext.toInt().toString(),
                    style: const TextStyle(color: Colors.green, fontSize: 25.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
