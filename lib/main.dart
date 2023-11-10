import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_final/firebase_options.dart';

/* // void main() {
//   runApp(const MyApp());
// } */
void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
 options: DefaultFirebaseOptions.currentPlatform,
 );
 runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'proyecto final',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'proyecto final'),
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

   void getData() async {
 CollectionReference collectionReference = 
FirebaseFirestore.instance.collection("tb_categorias");
 QuerySnapshot mensajes = await collectionReference.get();
 if(mensajes.docs.length != 0){
 for (var doc in mensajes.docs){
 print(doc.data());
 //chatsx.add(doc.data());
 }
 }
 }
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'cuantas veces se la ha comido Yordi?:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  
  @override
  void initState() {
    super.initState();
getData();
  }

  @override
  void dispose() {
    
    super.dispose();
  }
}
