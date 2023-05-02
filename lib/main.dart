import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


void main() =>  runApp(MaterialApp(
    home: Home(),
    title: 'Compile',
  ));
class Home extends StatelessWidget{

  void getHttp() async {


    var headers = {
      'username': 'saurabhss'
    };
    var request = http.Request('GET', Uri.parse('http://localhost:8090/api/projects/ok'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }


  }

 void postHttp() async{
   var headers = {
     'Content-Type': 'application/json'
   };
   var request = http.Request('POST', Uri.parse('https://b4c9-106-77-141-46.ngrok-free.app/api/projects/timeline'));
   request.body = json.encode({
     "id": "1",
     "timeline": "2"
   });
   request.headers.addAll(headers);

   http.StreamedResponse response = await request.send();

   if (response.statusCode == 200) {
     print(await response.stream.bytesToString());
   }
   else {
     print(response.reasonPhrase);
   }
 }
  @override
  Widget build(BuildContext context){
    getHttp();
    postHttp();
    return  Scaffold(
      appBar: AppBar(
      /*  title: Center(
          child: Text('Compile'),
        ),center
        */
        title : Text('Compile'),
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Container(
          child: Column(
            children: [
              SizedBox(height: 16,),
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

