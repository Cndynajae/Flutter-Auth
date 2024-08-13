import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 14, 105, 209),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'Flutter '),
      color: Color.fromARGB(255, 255, 7, 160),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter >= 50) {
        final snackBar = SnackBar(
          content: const Text('Tidak bisa dikurangi lagi!'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        _counter++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter <= 1) {
        final snackBar = const SnackBar(
          content: Text('Tidak bisa ditambah lagi!'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: TextStyle(fontSize: _counter.toDouble()),
            ),
            TextButton(
              onPressed: _incrementCounter,
              child: const Icon(Icons.add),
            ),
            TextButton(
              onPressed: _decrementCounter,
              child: const Icon(Icons.minimize_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

