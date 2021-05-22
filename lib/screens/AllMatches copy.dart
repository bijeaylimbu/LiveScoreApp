import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'dart:io';




Future <List<Data>> fetchMatch() async{


  final response=await http.get('http://127.0.0.1:8000/score/score-team-1/');
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
Data({this.series_name});
factory Data.fromJson(Map<String,dynamic> json){

  return Data(series_name:json['series_name'] 
  );
}


}



class AllMatches extends StatefulWidget{


  @override
  _AllMatches createState()=> _AllMatches();

}

class _AllMatches extends State<AllMatches>{
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


               List<Data> data=snapshot.data;
               return 
               ListView.builder(
                  scrollDirection: Axis.vertical,
                  
                
                  
    shrinkWrap: true,
  
                 itemCount: data.length,
                 itemBuilder: (BuildContext context, int index){

                   return Container(
                     height:70,
                    
                    color: Colors.white,
                     child:Center(child:Text(data[index].series_name)),
                    //  decoration: new BoxDecoration(

                    //    border:new Border(
                    //      bottom:new BorderSide()


                    //    )
                    //  ),
                   );
                  //  onTap: () => Scaffold
                  //   .of(context)
                  //   .showSnackBar(SnackBar(content: Text(index.toString()))
              // );

                 }
                 
                 );
             }
             else if (snapshot.hasError){

               return Text("${snapshot.error}");
             }
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