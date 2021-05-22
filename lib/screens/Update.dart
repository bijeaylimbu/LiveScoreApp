

import 'package:flutter/material.dart';

import 'AllMatches.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;


class UpdateMatches extends StatefulWidget{


int id;
String series_name;
String team1,team1a,team1b,team1c,team1d,team1e,team1f,team1g,team1h,team1i,
          team1j,team1k,team1extra1,team1extra2,team1extra3,toss,game_type;

String team2,team2a,team2b,team2c,team2d,team2e,team2f,team2g,team2h,team2i,
          team2j,team2k,team2extra1,team2extra2,team2extra3;
UpdateMatches({this.id,this.team1,this.team1a,this.team1b,this.team1c,this.team1d,this.team1e,this.team1f,this.team1g,this.team1h,this.team1i,
          this.team1j,this.team1k,this.team1extra1,this.team1extra2,this.team1extra3,this.series_name,this.toss,
          this.team2,this.team2a,this.team2b,this.team2c,this.team2d,this.team2e,this.team2f,this.team2g,this.team2h,this.team2i,
          this.team2j,this.team2k,this.team2extra1,this.team2extra2,this.team2extra3,this.game_type
          
          });

// UpdateMatches({this.id,this.series_name});
  @override
  _UpdateMatches createState()=> _UpdateMatches();
}

// class Update{


  


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






class _UpdateMatches extends State<UpdateMatches>{

  // @override
  // void initState(){

  //   super.initState();
    
  // }
  // 
  // 
  
  var id;
 String toss;
 String game_type;
       final TextEditingController series_name = TextEditingController();
        final TextEditingController team1a = TextEditingController();
        final TextEditingController team1b = TextEditingController();
        final TextEditingController team1c = TextEditingController();
        final TextEditingController team1d = TextEditingController();
        final TextEditingController team1e = TextEditingController();
        final TextEditingController team1f = TextEditingController();
        final TextEditingController team1g = TextEditingController();
        final TextEditingController team1h = TextEditingController();
        final TextEditingController team1i = TextEditingController();
        final TextEditingController team1j = TextEditingController();
        final TextEditingController team1k = TextEditingController();
        final TextEditingController team1extra1 = TextEditingController();
        final  TextEditingController team1extra2 = TextEditingController();
        final TextEditingController team1extra3 = TextEditingController();
        final TextEditingController team1 = TextEditingController();
         final TextEditingController team2a = TextEditingController();
        final TextEditingController team2b = TextEditingController();
        final TextEditingController team2c = TextEditingController();
        final TextEditingController team2d = TextEditingController();
        final TextEditingController team2e = TextEditingController();
        final TextEditingController team2f = TextEditingController();
        final TextEditingController team2g = TextEditingController();
        final TextEditingController team2h = TextEditingController();
        final TextEditingController team2i = TextEditingController();
        final TextEditingController team2j = TextEditingController();
        final TextEditingController team2k = TextEditingController();
        final TextEditingController team2extra1 = TextEditingController();
        final  TextEditingController team2extra2 = TextEditingController();
        final TextEditingController team2extra3 = TextEditingController();
        final TextEditingController team2 = TextEditingController();
// Future<Update> _futurematch;
@override
void initState(){

  super.initState();

  setState(() {
    id=widget.id;

    series_name.text=widget.series_name;
    

    
    team1.text=widget.team1;
    team1a.text=widget.team1a;
    
                team1b.text=widget.team1b;
                team1c.text=widget.team1c;
                team1d.text=widget.team1d;
                team1e.text=widget.team1e;
                team1f.text=widget.team1f;
                team1g.text=widget.team1g;
                team1h.text=widget.team1h;
                team1i.text=widget.team1i;

          team1j.text=widget.team1j;
          team1k.text=widget.team1k;
          team1extra1.text=widget.team1extra1;
          team1extra2.text=widget.team1extra2;
          team1extra3.text=widget.team1extra3;
         


           team2.text=widget.team2;
    team2a.text=widget.team2a;
    
                team2b.text=widget.team2b;
                team2c.text=widget.team2c;
                team2d.text=widget.team2d;
                team2e.text=widget.team2e;
                team2f.text=widget.team2f;
                team2g.text=widget.team2g;
                team2h.text=widget.team2h;
                team2i.text=widget.team2i;

          team2j.text=widget.team2j;
          team2k.text=widget.team2k;
          team2extra1.text=widget.team2extra1;
          team2extra2.text=widget.team2extra2;
          team2extra3.text=widget.team2extra3;

  });
}


@override
 Widget build(BuildContext context){
   final Data data=ModalRoute.of(context).settings.arguments;
series_name.text=data.series_name;
team1.text=data.team1;
team1a.text=data.team1a;
team1b.text=data.team1b;
team1c.text=data.team1c;
team1d.text=data.team1d;

team1e.text=data.team1e;
team1f.text=data.team1f;
team1g.text=data.team1g;

team1h.text=data.team1h;
team1i.text=data.team1i;
team1j.text=data.team1j;
team1k.text=data.team1k;
team1extra1.text=data.team1extra1;
team1extra2.text=data.team1extra2;
team1extra3.text=data.team1extra3;
team2.text=data.team2;
team2a.text=data.team2a;
team2b.text=data.team2b;
team2c.text=data.team2c;
team2d.text=data.team2d;

team2e.text=data.team2e;
team2f.text=data.team2f;
team2g.text=data.team2g;

team2h.text=data.team2h;
team2i.text=data.team2i;
team2j.text=data.team2j;
team2k.text=data.team2k;
team2extra1.text=data.team2extra1;
team2extra2.text=data.team2extra2;
team2extra3.text=data.team2extra3;
   return Scaffold(


     appBar:AppBar(),
     body:SingleChildScrollView(
       child: Column(
         
         children: <Widget>[
         Text(data.id.toString()),
Padding(
padding: const EdgeInsets.all(50.0),
  child:     Text("Team1",
style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,)
),
),

         Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(

               child: Text("Series Name     "),
             ),
             new Flexible(

              
 child:TextField(
        
           
  
        controller: series_name,

          
          decoration: InputDecoration( 
         
          ),
          
          ),

             ),

        
           ],



         ),

        

Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Team1 Name    '),
               
             ),
             new Flexible(
  child:   TextField(
        
           
  
        controller: team1,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),


Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 1     '),
               
             ),
             new Flexible(
 
      child:  TextField(
        
           
  
        controller: team1a,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),
        
      

Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 2      '),
               
             ),
             new Flexible(
 
    child:  TextField(
        
           
  
        controller: team1b,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),
      

      Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 3           '),
               
             ),
             new Flexible(
 
    child:   TextField(
        
           
  
        controller: team1c,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),
         


   Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 4        '),
               
             ),
             new Flexible(
 
    child:   TextField(
        
           
  
        controller: team1d,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),
       
         Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 5         '),
               
             ),
             new Flexible(
 
    child:   TextField(
        
           
  
        controller: team1e,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),
           Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 6           '),
               
             ),
             new Flexible(
 
    child:   TextField(
        
           
  
        controller: team1f,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),

  Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 7           '),
               
             ),
             new Flexible(
 
    child:   TextField(
        
           
  
        controller: team1g,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),

           Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 8         ' ),
               
             ),
             new Flexible(
 
    child:   TextField(
        
           
  
        controller: team1h,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),


           Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 9             '),
               
             ),
             new Flexible(
 
    child:   TextField(
        
           
  
        controller: team1i,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],




         ),

           Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 10             '),
               
             ),
             new Flexible(
 
    child:   TextField(
        
           
  
        controller: team1j,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),

           Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 11           '),
               
             ),
             new Flexible(
 
    child:   TextField(
        
           
  
        controller: team1k,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),

  Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 12            '),
               
             ),
             new Flexible(
 
    child:   TextField(
        
           
  
        controller: team1extra1,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),


  Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 13           '),
               
             ),
             new Flexible(
 
    child:   TextField(
        
           
  
        controller: team1extra2,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),


       
  Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 14           '),
               
             ),
             new Flexible(
 
    child:   TextField(
        
           
  
        controller: team1extra3,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),

Padding(
padding: const EdgeInsets.all(50.0),
  child:     Text("Team2",
style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,)
),
),



 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Team 2 Name    '),
               
             ),
             new Flexible(
 
    child:     TextField(
        
           
  
        controller: team2,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),
       
      

 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 1       '),
               
             ),
             new Flexible(
 
    child:      TextField(
        
           
  
        controller: team2a,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),
       


 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 2           '),
               
             ),
             new Flexible(
 
    child:      TextField(
        
           
  
        controller: team2b,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),
         

 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 3               '),
               
             ),
             new Flexible(
 
    child:      TextField(
        
           
  
        controller: team2c,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),
       

 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 4          '),
               
             ),
             new Flexible(
 
    child:      TextField(
        
           
  
        controller: team2d,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),


 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 5          '),
               
             ),
             new Flexible(
 
    child:      TextField(
        
           
  
        controller: team2e,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),

       

 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 6        '),
               
             ),
             new Flexible(
 
    child:      TextField(
        
           
  
        controller: team2f,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),


 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 7           '),
               
             ),
             new Flexible(
 
    child:      TextField(
        
           
  
        controller: team2g,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),

      

 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 8           '),
               
             ),
             new Flexible(
 
    child:      TextField(
        
           
  
        controller: team2h,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),


 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 9           '),
               
             ),
             new Flexible(
 
    child:      TextField(
        
           
  
        controller: team2i,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),
      


 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 10        '),
               
             ),
             new Flexible(
 
    child:      TextField(
        
           
  
        controller: team2j,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),


        
 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 11      '),
               
             ),
             new Flexible(
 
    child:      TextField(
        
           
  
        controller: team2k,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),


 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 12          '),
               
             ),
             new Flexible(
 
    child:      TextField(
        
           
  
        controller: team2extra1,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),


 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 13         '),
               
             ),
             new Flexible(
 
    child:      TextField(
        
           
  
        controller: team2extra2,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),
       

 Row(
//  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [

             new Flexible(
child: Text('Player Name 14        '),
               
             ),
             new Flexible(
 
    child:      TextField(
        
           
  
        controller: team2extra3,

          
          decoration: InputDecoration( 
         
          ),
          
          ),
              
 

             ),

             

           ],



         ),




        

        Padding(
          
           padding: const EdgeInsets.all(20.0),

        child:  ElevatedButton(
      
            child: Text('update'),
            onPressed: (){
int id=data.id;
editMatchDetail(id);

          //     setState(() {
          //       _futurematch=update_matches(series_name.text,team1.text,team1a.text,
          //       team1b.text,team1c.text,team1d.text,team1e.text,team1f.text,team1g.text,team1h.text,team1i.text,
          // team1j.text,team1k.text,team1extra1.text,team1extra2.text,team1extra3.text,toss.text);
          //     });

            },
          )
        )
        
         ],


         
         
        

         
       ),


      //  children: [
      //    Container(
           
      //   // child: Text(data.id.toString()),
      //     child: Text(data.team1),
      //    )

      //  ],
     )

   );
 }
  

  editMatchDetail(id) async{

var seriesName=series_name.text;
var team_1=team1.text;
var team_1a=team1a.text;

            var team_1b=   team1b.text;
               var team_1c= team1c.text;
               var team_1d= team1d.text;
               var team_1e= team1e.text;
               var team_1f= team1f.text;
               var team_1g= team1g.text;
              var team_1h=  team1h.text;
               var team_1i= team1i.text;

       var team_1j=   team1j.text;
        var team_1k=  team1k.text;
      var  team_1extra1=    team1extra1.text;
      var team_1extra2=    team1extra2.text;
      var team_1extra3=    team1extra3.text;



      var team_2=team2.text;
var team_2a=team2a.text;

            var team_2b=   team2b.text;
               var team_2c= team2c.text;
               var team_2d= team2d.text;
               var team_2e= team2e.text;
               var team_2f= team2f.text;
               var team_2g= team2g.text;
              var team_2h=  team2h.text;
               var team_2i= team2i.text;

       var team_2j=   team2j.text;
        var team_2k=  team2k.text;
      var  team_2extra1=    team2extra1.text;
      var team_2extra2=    team2extra2.text;
      var team_2extra3=    team2extra3.text;
      
       if(id!=null){
var url='http://127.0.0.1:8000/score/score-team-1/$id/';
       var UpdateData=json.encode({
         'series_name':seriesName,
         'team1':team_1,
         'playera1':team_1a,
          'playera2':team_1b,
           'playera3':team_1c,
            'playera4':team_1d,
             'playera5':team_1e,

              'playera6':team_1f,
               'playera7':team_1g,

                'playera8':team_1h,
                 'playera9':team_1i,
                 'playera10':team_1j,

                'playera11':team_1k,
                 'extra_playera1':team_1extra1,
                  'extra_playera2':team_1extra2,
                   'extra_playera3':team_1extra3,

                    'team2':team_2,
         'playerb1':team_2a,
          'playerb2':team_2b,
           'playerb3':team_2c,
            'playerb4':team_2d,
             'playerb5':team_2e,

              'playerb6':team_2f,
               'playerb7':team_2g,

                'playerb8':team_2h,
                 'playerb9':team_2i,
                 'playerb10':team_2j,

                'playerb11':team_2k,
                 'extra_playerb1':team_2extra1,
                  'extra_playerb2':team_2extra2,
                   'extra_playerb3':team_2extra3,


          
                  



       
// team_1:team1,
// team_1a:team1a,
// team_1b:team1b,
// team_1c:team1c,
// team_1d:team1d,
// team_1e:team1e,
// team_1f:team1f,
// team_1g:team1g,
// team_1h:team1h,
// team_1i:team1i,
//           team_1j:team1j,
//           team_1k:team1k,
//           team_1extra1:team1extra1,
//           team_1extra2:team1extra2,
//           team_1extra3:team1extra3,
//           seriesName:series_name,
         
       });
       var response = await http.put(url,headers: {
        "Content-Type" : "application/json",
        
      },body: UpdateData);
      if(response.statusCode == 200){
        var messageSuccess = json.decode(response.body)['message'];
        print(messageSuccess);
      }else {
         var messageError = response.body;
       print(messageError);
        
      }
    }
  }
  }



  








