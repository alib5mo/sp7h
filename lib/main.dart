
import 'package:flutter/material.dart';


void main() {
  runApp(const Name());
}

class Name extends StatefulWidget {
  const Name({super.key});

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  int a=0,b=0,c=0,d=0;
  void B5(){
    if(a+1>9&&b+1<10){
      a=0;
      b++;
    } else if(b+1>9&&a==9){
      a=0;
      b=0;
      c++;
    }else if(c+1>9&&b+1>9){
      a=0;
      b=0;
      c=0;
      d++;
    }else{
      a++;
    }


  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white12,
        body: Center(
          child: Column(

            children: [
              //Spacer(flex: 5,),
              const SizedBox(height: 150,),
              const Text('صدقة جارية',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),),
             // Spacer(flex: 2,),
              const SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Container(
                    decoration:BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(17),
                    ) ,

                    height:150,
                    width: 80,
                    child: Center(
                      child: Text('$d',
                        style: const TextStyle(
                          fontSize: 100,
                          color: Colors.white,
                        ),),
                    ),
                  ),
                  Container(
                    decoration:BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(17),
                    ) ,

                    height:150 ,
                    width: 80,
                    child: Center(
                      child: Text('$c',
                        style: const TextStyle(
                          fontSize: 100,
                          color: Colors.white,
                        ),),
                    ),
                  ),
                  Container(
                    decoration:BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(17),
                    ) ,

                    height:150,
                    width: 80,
                    child: Center(
                      child: Text('$b',
                        style: const TextStyle(
                          fontSize: 100,
                          color: Colors.white,
                        ),),
                    ),
                  ),
                  Container(
                    decoration:BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(17),
                    ) ,

                    height: 150,
                    width: 80,
                    child: Center(
                      child: Text('$a',
                        style: const TextStyle(
                          fontSize: 100,
                          color: Colors.white,
                        ),),
                    ),
                  ),
                ],
              ),
              //Spacer(flex: 2,),
              const SizedBox(height: 80,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: (){
                  setState(() {
                    a=0;
                    b=0;
                    c=0;
                    d=0;
                  });
                },

                child: const Padding(
                  padding: EdgeInsets.all(7),
                  child: Text('Reset',
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ),),
              //Spacer(flex: 1,),
              const SizedBox(height: 30,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),

                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: (){
                  setState(() {
                    B5();
                  });
                },
                child: const Text('    ',
                  style: TextStyle(

                    fontSize:120,
                    color: Colors.white,
                  ),
                ),
              ),
             // Spacer(flex: 5,),



            ],),
        ),

      ),
    );
  }
}