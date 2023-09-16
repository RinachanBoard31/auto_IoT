import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  String _type = "偶数";
  bool _countFlag = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter % 2 == 0) {
        _type = "偶数";
      } else {
        _type = "奇数";
      }
    });
  }

  void _hideCounter() {
    setState(() {
      if (_countFlag == true) {
        _countFlag = false;
      } else {
        _countFlag = true;      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Row(children: [
          Icon(Icons.abc_outlined),
          Text("auto_iot"),
        ])
      ),
      body: 
        Column(children: [
          const Text("Hello, world"),
          const Text("aaaaa"),
          TextButton(
            onPressed: () => { _hideCounter() }, 
            child: const Text("hide/unhide counter")
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 24.0
              ),
              Icon(
                Icons.beach_access,
                color: Colors.blue,
                size: 30.0
              ),
          ],),
          if(_countFlag == true)
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          Text(
            '$_type',
            style: TextStyle(fontSize: 20, color: Colors.black54)
          ),
        ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => { _incrementCounter() },
        tooltip: 'Increment',
        child: const Icon(Icons.add) 
      ),
      drawer: const Drawer(
        child: Center(child: Text("Drawer"))
      )
      
      // Center(
      //   child: Column( 
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'You have pushed the button this many times belows:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //     ],
      //   ), 
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
        
    );
  }
}
