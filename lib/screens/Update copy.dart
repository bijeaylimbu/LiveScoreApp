// import 'dart:js';

// import 'package:flutter/material.dart';

// import 'AllMatches.dart';
// import 'dart:convert';
// import 'dart:async';
// import 'package:http/http.dart' as http;


// class ViewMatches extends StatefulWidget{


// String id;
// ViewMatches({this.id});

//   @override
//   _ViewMatches createState()=> _ViewMatches();
// }

// class Update{
// String team1,team1a,team1b,team1c,team1d,team1e,team1f,team1g,team1h,team1i,
//           team1j,team1k,team1extra1,team1extra2,team1extra3,series_name;

  
// Update({this.team1,this.team1a,this.team1b,this.team1c,this.team1d,this.team1e,this.team1f,this.team1g,this.team1h,this.team1i,
//           this.team1j,this.team1k,this.team1extra1,this.team1extra2,this.team1extra3,this.series_name});


// factory Update.fromJson(Map<String, dynamic> json){

//   return Update(
// team1:json['team1'],
// team1a:json['team1a'],
// team1b:json['team1b'],
// team1c:json['team1c'],
// team1d:json['team1d'],
// team1e:json['team1e'],
// team1f:json['team1f'],
// team1g:json['team1g'],
// team1h:json['team1h'],
// team1i:json['team1i'],
//           team1j:json['team1j'],
//           team1k:json['team1k'],
//           team1extra1:json['team1extra1'],
//           team1extra2:json['team1extra2'],
//           team1extra3:json['team1extra3'],
//           series_name:json['series_name']

//     );
//    }
  
// }


// Future <Update> update_matches (
//   String data,
//   String team1,team1a,team1b,team1c,team1d,team1e,team1f,team1g,team1h,team1i,
//           team1j,team1k,team1extra1,team1extra2,team1extra3,series_name,
  

//  ) async{

  
        
//                     final http.Response response=await http.put(Uri.parse('http://127.0.0.1:8000/score/score-team-1/'),
//      headers:<String, String> {
//        'Content-Type':'application/json',



//      },
//      body:jsonEncode(<String,String>{

//   'series_name': series_name,

//         'playera1': team1a,
//             'playera2': team1b,
//               'playera3': team1c,
//               'playera4': team1d,
//                 'playera5': team1e,
//                 'playera6': team1f,
//                   'playera7': team1g,
//                   'playera8': team1h,
//                     'playera9': team1i,
//                     'playera10': team1j,
//                       'playera11': team1k,
//                       "extra_playera1":team1extra1,
//                       "extra_playera2":team1extra2,
//                         "extra_playera3":team1extra3,
                        
//                         'team1':team1,

 
     
//      }
     
//      )
     
//      );

//      if (response.statusCode==200){

//        return Update.fromJson (jsonDecode(response.body));
//      }
//      else{

//        throw Exception ('error');
//      }
//    }






// class _ViewMatches extends State<ViewMatches>{

//   @override
//   void initState(){

//     super.initState();
    
//   }
//  final TextEditingController toss = TextEditingController();
//        final TextEditingController series_name = TextEditingController();
//         final TextEditingController team1a = TextEditingController();
//         final TextEditingController team1b = TextEditingController();
//         final TextEditingController team1c = TextEditingController();
//         final TextEditingController team1d = TextEditingController();
//         final TextEditingController team1e = TextEditingController();
//         final TextEditingController team1f = TextEditingController();
//         final TextEditingController team1g = TextEditingController();
//         final TextEditingController team1h = TextEditingController();
//         final TextEditingController team1i = TextEditingController();
//         final TextEditingController team1j = TextEditingController();
//         final TextEditingController team1k = TextEditingController();
//         final TextEditingController team1extra1 = TextEditingController();
//         final  TextEditingController team1extra2 = TextEditingController();
//         final TextEditingController team1extra3 = TextEditingController();
//         final TextEditingController team1 = TextEditingController();
// Future<Update> _futurematch;


// @override
//  Widget build(BuildContext context){
//   final Data data=ModalRoute.of(context).settings.arguments;

//    return Scaffold(


//      appBar:AppBar(),
//      body:Container(
//        child: Column(
//          children: <Widget>[

    
         

        
        
//         TextFormField(
        
//         initialValue: data.series_name,
//         controller: series_name,

          
//           decoration: InputDecoration( 
            
            
//           ),
          
//           ),
//           ElevatedButton(
//             child: Text('update'),
//             onPressed: (){

//               setState(() {
//                 _futurematch=update_matches(series_name.text,team1.text,team1a.text,
//                 team1b.text,team1c.text,team1d.text,team1e.text,team1f.text,team1g.text,team1h.text,team1i.text,
//           team1j.text,team1k.text,team1extra1.text,team1extra2.text,team1extra3.text,toss.text);
//               });

//             },
//           )
          
        
//          ],


         
         
        

         
//        ),


//       //  children: [
//       //    Container(
           
//       //   // child: Text(data.id.toString()),
//       //     child: Text(data.team1),
//       //    )

//       //  ],
//      )

//    );
//  }
  
// }




