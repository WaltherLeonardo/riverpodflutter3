import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



final nameProvider =Provider<String>((ref){return "I am Walther";});


void main() {
  runApp(const ProviderScope(child: MyApp()) );
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}



class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final name= ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("riverpod"),
      ),
      body:    Center(
        child: Text(name),
      ),

    );
  }
}