
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(
        ),
    );
  }
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String a='HEAD';
  String b='TAIL';
  bool c = true;
  String d='https://thumbs.dreamstime.com/b/single-bitcoin-front-white-background-single-bitcoin-front-coin-white-background-107921761.jpg';
  String e='https://c8.alamy.com/comp/2C1C1T7/back-side-of-physical-bitcoin-2C1C1T7.jpg';
  bool f=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Turn the coin'),
         centerTitle: true,
        ),
      body:Center(
        child :Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              c?a:b,
              textAlign: TextAlign.center,
               style: const TextStyle(fontSize: 25),
            ),
            Image.network( f?d:e),
            ElevatedButton(onPressed: (){
             c=!c;
             print(c);
             f=!f;
             setState(() {});
             }, child: const Text('Turn'),

           ),
          ],
        ),
      ) ,

    );
  }
}

