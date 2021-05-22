

import 'package:flutter/material.dart';

import 'AllMatches.dart';
import 'dart:convert';
import 'Update.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'ScoreBoard.dart';
import './AllMatches.dart';
// class UpdateMatches{
// // String team1,team1a,team1b,team1c,team1d,team1e,team1f,team1g,team1h,team1i,
// //           team1j,team1k,team1extra1,team1extra2,team1extra3,series_name;
// String series_name;

  
// // UpdateMatches({this.team1,this.team1a,this.team1b,this.team1c,this.team1d,this.team1e,this.team1f,this.team1g,this.team1h,this.team1i,
// //           this.team1j,this.team1k,this.team1extra1,this.team1extra2,this.team1extra3,this.series_name});
// UpdateMatches({this.series_name});

// factory UpdateMatches.fromJson(Map<String, dynamic> json){

//   return UpdateMatches(
// // team1:json['team1'],
// // team1a:json['team1a'],
// // team1b:json['team1b'],
// // team1c:json['team1c'],
// // team1d:json['team1d'],
// // team1e:json['team1e'],
// // team1f:json['team1f'],
// // team1g:json['team1g'],
// // team1h:json['team1h'],
// // team1i:json['team1i'],
// //           team1j:json['team1j'],
// //           team1k:json['team1k'],
// //           team1extra1:json['team1extra1'],
// //           team1extra2:json['team1extra2'],
// //           team1extra3:json['team1extra3'],
//           series_name:json['series_name']

//     );
//    }
  
// }


// Future <UpdateMatches> update_matches (
//   // String data,
//   // String team1,team1a,team1b,team1c,team1d,team1e,team1f,team1g,team1h,team1i,
//   //         team1j,team1k,team1extra1,team1extra2,team1extra3,series_name
  

//   String series_name) async{

  
//           var data;
//                     final http.Response response=await http.put(Uri.parse('http://127.0.0.1:8000/score/score-team-1/$data/'),
//      headers:<String, String> {
//        'Content-Type':'application/json',



//      },
//      body:jsonEncode(<String,String>{

//   'series_name': series_name

//         // 'playera1': team1a,
//             // 'playera2': team1b,
//             //   'playera3': team1c,
//             //   'playera4': team1d,
//             //     'playera5': team1e,
//             //     'playera6': team1f,
//             //       'playera7': team1g,
//             //       'playera8': team1h,
//             //         'playera9': team1i,
//             //         'playera10': team1j,
//             //           'playera11': team1k,
//             //           "extra_playera1":team1extra1,
//             //           "extra_playera2":team1extra2,
//             //             "extra_playera3":team1extra3,
                        
//             //             'team1':team1,

 
     
//      }
     
//      )
     
//      );

//      if (response.statusCode==200){

//        return UpdateMatches.fromJson (jsonDecode(response.body));
//      }
//      else{

//        throw Exception ('error');
//      }
//    }



class ViewMatches extends StatefulWidget{




  @override
  _ViewMatches createState()=> _ViewMatches();
}


class _ViewMatches extends State<ViewMatches>{

Future <List<Data>> futureData;



  @override
  void initState(){

    super.initState();
    futureData=fetchMatch();
    
  }

      //  final TextEditingController series_name = TextEditingController();
        // final TextEditingController team1a = TextEditingController();
        // final TextEditingController team1b = TextEditingController();
        // final TextEditingController team1c = TextEditingController();
        // final TextEditingController team1d = TextEditingController();
        // final TextEditingController team1e = TextEditingController();
        // final TextEditingController team1f = TextEditingController();
        // final TextEditingController team1g = TextEditingController();
        // final TextEditingController team1h = TextEditingController();
        // final TextEditingController team1i = TextEditingController();
        // final TextEditingController team1j = TextEditingController();
        // final TextEditingController team1k = TextEditingController();
        // final TextEditingController team1extra1 = TextEditingController();
        // final  TextEditingController team1extra2 = TextEditingController();
        // final TextEditingController team1extra3 = TextEditingController();
        // final TextEditingController team1 = TextEditingController();
// Future<UpdateMatches> _futurematch;


@override
 Widget build(BuildContext context){
  final Data data=ModalRoute.of(context).settings.arguments;

   return Scaffold(


     appBar:AppBar(title:Column(children: [
       Text(data.series_name),
     
     ],)),
     body:Row(
    

       children: <Widget>[


       
        
  Expanded(
           flex:5 ,
           child: Column(


                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   Text("ID "+data.id.toString()),
                   Text("Game Type: "+data.game_type),
                   Text(""),
                   
                Text(" Team Name: "+data.team1),
                Text(""),
                   Text(""),
                  Text(" Player 1: "+data.team1a),
                  Text(" Player 2: "+data.team1b),
                  Text(" Player 3: "+data.team1c),
                  Text(" Player 4: "+data.team1d),
                  Text(" Player 5: "+data.team1e),
                  Text(" Player 6: "+data.team1f),
                  Text(" Player 7: "+data.team1g),
                  Text(" Player 8: "+data.team1h),

                  Text(" Player 9: "+data.team1i),
                  Text(" Player 10: "+data.team1j),
                  Text(" Player 11: "+data.team1k),
                  Text(" Player 12: "+data.team1extra1),
                  Text(" Player 13: "+data.team1extra2),
                  Text(" Player 14: "+data.team1extra3),

                   new Container(
          
          margin: new EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 10.0),
        ),
              new ButtonTheme(
                minWidth: 55,
                child: new ButtonBar(children:<Widget> [

                  new FlatButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ScoreBoard(),
                    
                    settings: RouteSettings(arguments: data)
                    
                    ));




                  }, child: Text('Next'))
                ],)
              
              )
                ],
           ),
         
         
      
         ),
          Expanded(
            flex: 5,
           child: Column(


                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(""),
                  Text(""),
                  Text(""),
                     Text("Team Name: "+data.team2),
                     Text(""),
                   Text(""),
                  Text(" Player 1: "+data.team2a),
                  Text(" Player 2: "+data.team2b),
                  Text(" Player 3: "+data.team2c),
                  Text(" Player 4: "+data.team2d),
                  Text(" Player 5: "+data.team2e),
                  Text(" Player 6: "+data.team2f),
                  Text(" Player 7: "+data.team2g),
                  Text(" Player 8: "+data.team2h),

                  Text(" Player 9: "+data.team2i),
                  Text(" Player 10: "+data.team2j),
                  Text(" Player 11: "+data.team2k),
                  Text(" Player 12: "+data.team2extra1),
                  Text(" Player 13: "+data.team2extra2),
                
                  Text(" Player 14: "+data.team2extra3),
                 
                  // FlatButton(onPressed: (){}, child: Text("NEXT"))
                ],
           ),
           
         
         
      
         ),

        
       ],


       
       
      
         
        


      



        // Container(
             
        //       color: Colors.grey,
           
        //       child: Text(data.team1),
        //     ),
         
        //  Expanded(
        //    flex:5 ,
        //    child: Column(


        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: <Widget>[
              
        //           Text(data.series_name),
        //           Text(data.id.toString())
        //         ],
        //    ),
         
         
      
        //  ),
        //   Expanded(
        //     flex: 5,
        //    child: Column(


        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: <Widget>[
        //           Text(data.series_name),
        //           Text(data.series_name)
        //         ],
        //    ),
           
         
         
      
        //  ),

          



       
       ),
       
     



   );
 }
  
}




