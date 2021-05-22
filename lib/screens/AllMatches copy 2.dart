import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import './ViewMatches.dart';
import 'dart:convert';
import 'dart:async';
import 'Update.dart';

import 'dart:io';




Future <List<Data>> fetchMatch() async{


  final response=await http.get(Uri.parse('http://127.0.0.1:8000/score/score-team-1/')
  ,headers: {"Accept": "application/json"});
  if (response.statusCode==200){
    List jsonResponse=json.decode(response.body);
    return jsonResponse.map((data)=>new Data.fromJson(data)).toList();
    



  }
  else{

    throw Exception('error');
  }
}

class Data{
   String series_name;
   int id;
   String team1,team1a,team1b,team1c,team1d,team1e,team1f,team1g,team1h,team1i,
          team1j,team1k,team1extra1,team1extra2,team1extra3, game_type,toss,
           team2a,team2b,team2c,team2d,team2e,team2f,team2g,
            team2h,team2i,team2j,team2k,team2extra1,team2extra2,team2extra3,team2;
Data({this.series_name,this.id,this.team1,this.team1a,this.team1b,this.team1c,this.team1d,this.team1e,this.team1f,this.team1g,this.team1h,this.team1i,
          this.team1j,this.team1k,this.team1extra1,this.team1extra2,this.team1extra3, this.game_type,this.toss,
           this.team2a,this.team2b,this.team2c,this.team2d,this.team2e,this.team2f,this.team2g,
            this.team2h,this.team2i,this.team2j,this.team2k,this.team2extra1,this.team2extra2,this.team2extra3,this.team2});
factory Data.fromJson(Map<String,Object> json){

  return Data(series_name:json['series_name'] ,id:json['id'],team1:json['team1'],toss:json['toss'],team1a:json['playera1'],team1b:json['playera2'],team1c:json['playera3']
  ,team1d:json['playera4'],team1e:json['playera5'],team1f:json['playera6'],team1g:json['playera7'],
  team1h:json['playera8'],team1i:json['playera9'],
          team1j:json['playera10'],team1k:json['playera11'],team1extra1:json['extra_playera1'],team1extra2:json['extra_playera2'],
          team1extra3:json['extra_playera3'], game_type:json['game_type'],
           team2a:json['playerb1'],team2b:json['playerb2'],team2c:json['playerb3'],team2d:json['playerb4'],
           team2e:json['playerb5'],team2f:json['playerb6'],team2g:json['playerb7'],
            team2h:json['playerb8'],team2i:json['playerb9'],team2j:json['playerb10'],team2k:json['playerb11'],team2extra1:json['extra_playerb1'],team2extra2:json['extra_playerb2'],team2extra3:json['extra_playerb3'],
            team2:json['team2']

  );
 

}



}



class AllMatches extends StatefulWidget{


  @override
  _AllMatches createState()=> _AllMatches();

}

class _AllMatches extends State<AllMatches>{

 
Future <List<Data>> futureData;
@override
void initState(){

  super.initState();
  futureData=fetchMatch();
}



 


Widget ReviewMatch(){

  return Scaffold(

    body: SingleChildScrollView(
      
     
         child: FutureBuilder<List<Data>>(
           future:futureData,
           builder:(context , snapshot){


             if (snapshot.hasData){


               List<Data> data=snapshot.data ?? [];
               return 
               ListView.builder(
                  scrollDirection: Axis.vertical,
                  
                
                  
                shrinkWrap: true,
  
                 itemCount: data.length,
                 itemBuilder: (BuildContext context, int index){

                   return new Card(
                     child:new ListTile(
                
                   title:FlatButton(
                     child:Center(child:Text((data[index].series_name))),
                   
                     
                     
                     onPressed: () async{


   Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                   (context) => UpdateMatches(),
                   settings: RouteSettings(
                     
                     arguments: data[index]
                   
                   )
                ),
   );
                    



                     },
                     
                    //  decoration: new BoxDecoration(

                    //    border:new Border(
                    //      bottom:new BorderSide()


                    //    )
                    //  ),
                   )
                  //  onTap: () => Scaffold
                  //   .of(context)
                  //   .showSnackBar(SnackBar(content: Text(index.toString()))
              // );
                     ),
                     
                     
                   );
                 }
                 
                 );
             }
            //  else if (snapshot.hasError){

               return Center(child:Text("${snapshot.error}"));
            //  }
           }
          

         
         
         ),




       
    
    )



  );
}


@override
Widget build(BuildContext context){


  return Scaffold(
    
    appBar: AppBar(
      title:Text('Hello')
      
      ),
    body:ReviewMatch(),
  
  );

}

}