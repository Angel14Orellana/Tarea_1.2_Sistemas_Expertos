import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  double contador = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 30, 0, 255),
          title: const Text('Calculadora'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Calculadora:',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                'Valor de contador: $contador',
                style: const TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.green[700],
              onPressed: sumar,
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              backgroundColor: Colors.red[700],
              onPressed: restar,
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              backgroundColor: Colors.amber[700],
              onPressed: multiplicar,
              child: const Icon(Icons.close),
            ),
            FloatingActionButton(
              backgroundColor: Colors.purple[700],
              onPressed: dividir,
              child: const Icon(Icons.percent),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  void sumar() {
    setState(() {
      contador += 2;
    });
  }

  void restar() {
    setState(() {
      contador -= 2;
    });
  }

  void multiplicar() {
    setState(() {
      contador *= 2;
    });
  }

  void dividir() {
    setState(() {
      contador /= 2;
    });
  }
}
