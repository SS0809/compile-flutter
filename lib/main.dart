import 'package:flutter/material.dart';
import 'network.dart';

void main() =>  runApp(MaterialApp(
    home: Home(),
    title: 'Compile',
  ));
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    getHttp();
    postHttp();
    return  Scaffold(
      appBar: AppBar(
        title : Text('Compile'),
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Container(
          child: Column(
            children: [
              SizedBox(height: 16,),
              TextButton(
                child: Text('reset', style: TextStyle(fontSize: 20.0),),
                     onPressed: () {
                       postHttp2();
                     },
              ),
              Text('Welcome to the Compiler',style: TextStyle(fontSize: 25),),
              SizedBox(height: 25,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Name',
                  border: OutlineInputBorder(),
                ),
                maxLines: 50, // <-- SEE HERE
                minLines: 18, // <-- SEE HERE
              ),
              SizedBox(height: 20,),
               TextFormField(
                  textAlign: TextAlign.center, // this is new
                  decoration: InputDecoration(
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 2), // this is new
                    fillColor: Colors.grey[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'OUTPUT GOES HERE',
                  ),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
            ],
          ),
        /*child: Icon(
          Icons.airport_shuttle,
          color: Colors.lightBlue,
          size: 50.0 ,
        )*/
       // child: Text('In love with coding'),
        /*  child:  IconButton(
            icon: Image.asset('assets/mountain.png'),
            iconSize: 500,
            onPressed: () {
              print('done');
            },*/

      ),
      floatingActionButton : FloatingActionButton(
        child: Text('RUn'),
        backgroundColor: Colors.deepPurple[400],
        onPressed: () {
          getHttp();
          postHttp();
          },
      ),
    );
  }
}

