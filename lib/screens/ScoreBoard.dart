import 'dart:convert';

import 'package:flutter/material.dart';
import 'AllMatches.dart';
import 'package:http/http.dart' as http;





class ScoreBoard extends StatefulWidget{


  @override
  _ScoreBoard createState()=> _ScoreBoard();

  
}

class _ScoreBoard extends State<ScoreBoard>{

Future <List<Data>> futureData;

@override
void initState(){

  super.initState();
  futureData=fetchMatch();
}



Widget Score(){
final Data data=ModalRoute.of(context).settings.arguments;
  return Column(
    children:<Widget> [

      Container(
        
         child: Text("Series Name:" +data.series_name,style: TextStyle(
                  color: Colors.grey[800],
                  
                  fontSize: 15),
                ),),
         
          Container(
         margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
         child: Text("Score"
                ),),

      Row(
        
         children: [
           Text('Stricker'),
         
         ],
         ),
        Row(
        
         children: [
           Text('Non-Stricker'),
             Text('Stricker'),

         ],
         ),
          Row(
        
         children: [
           Text('Batsman3'),
             Text('Stricker'),

         ],
         ),
          Row(
        
         children: [
           Text('Batsman 4'),
             Text('Stricker'),

         ],
         ),

           Row(
        
         children: [
           Text('Batsman 5'),
             Text('Stricker'),

         ],
         ),

           Row(
        
         children: [
           Text('Batsman 6'),
             Text('Stricker'),

         ],
         ),
         
           Row(
        
         children: [
           Text('Batsman 7'),
             Text('Stricker'),

         ],
         ),
         
  Row(
        
         children: [
           Text('Batsman 8'),
             Text('Stricker'),

         ],
         ),


           Row(
        
         children: [
           Text('Batsman 9'),
             Text('Stricker'),

         ],
         ),


           Row(
        
         children: [
           Text('Batsman 10'),
             Text('Stricker'),

         ],
         ),

           Row(
        
         children: [
           Text('Batsman 11'),
             Text('Stricker'),

         ],
         ),

         Row(
           children: [

           FlatButton(onPressed: (){
            
            
           }, child: Text("1")),
              FlatButton(onPressed: (){}, child: Text("1")),
                 FlatButton(onPressed: (){}, child: Text("1")),  
                  FlatButton(onPressed: (){}, child: Text("1")),
                     FlatButton(onPressed: (){}, child: Text("1"))

         ],
         ),

           Row(
           children: [

           FlatButton(onPressed: (){}, child: Text("2")),
              FlatButton(onPressed: (){}, child: Text("2")),
                 FlatButton(onPressed: (){}, child: Text("2")),  
                  FlatButton(onPressed: (){}, child: Text("2")),
                     FlatButton(onPressed: (){}, child: Text("2"))

         ],
         )
    ],



    

  



  );
}

@override
Widget build(BuildContext context){
return Scaffold(
  
body: Score(),

);

}

PlayerList(id){
  List data=List();
Future <String> getPlayer() async {


  var res=await http.get(Uri.encodeFull("http://127.0.0.1:8000/score/score-team-1/$id"),
  headers: {'Accept':"application/json"}
  );
  var resBody=json.decode(res.body);

  setState(() {
    data=resBody;
  });

  print(resBody);
}
@override
void initState(){

  super.initState();
  
}

}

}