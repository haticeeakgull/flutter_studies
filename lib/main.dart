import 'package:flutter/material.dart';
import 'package:statefullwidgets/buton_turleri.dart';

void main(List<String> args){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:  Colors.teal,
        useMaterial3: false,
      ),
      home:ButonTurleri(), 
    );
  }

  
}
class HomePage extends StatefulWidget{
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _counter = 0;

  void InceaseTheCounter(){
    setState(() {
       _counter++;
      
    });
  
  }

  void DecreaseTheCounter(){
    setState(() {
      _counter--;
    });
  }
  void ResetTheCounter(){
    setState(() {
      _counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(  "Bölüm2")),
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Butona basılma sayısı:",
            style: Theme.of(context).textTheme.labelLarge,
            
            ),
            
            SizedBox(
              height: 6,
            ),
            Text(_counter.toString(),
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              color: _counter<0? const Color.fromARGB(255, 224, 74, 63) : Colors.lightGreen
            ),
            
            ),
          ],
        ),
      ),
      floatingActionButton:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            InceaseTheCounter();
          },
          child:Icon(Icons.add),),
          SizedBox(
            height: 4,
          ),
          FloatingActionButton(onPressed: (){
            DecreaseTheCounter();
          },
          child:Icon(Icons.remove),),
          SizedBox(
            height: 4,
          ),

           FloatingActionButton(onPressed: (){
            ResetTheCounter();
          },
          child:Icon(Icons.delete_outline),),
        ],
      ),
    );
  }
}