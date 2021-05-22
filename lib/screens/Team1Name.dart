      import 'package:flutter/services.dart';
      import 'package:flutter/material.dart';
      import 'package:live_score_app/screens/Login.dart';
      import 'package:flutter/services.dart';
      import 'package:http/http.dart' as http;
      import 'package:shared_preferences/shared_preferences.dart';
      import 'package:http/http.dart' as http;
      import 'dart:convert';
      import 'package:toast/toast.dart';
      import 'package:sticky_headers/sticky_headers.dart';
     
   







    
      class Team1Name extends StatefulWidget{

     




  bool _isLoading = false;
        @override
        _Team1Name createState()=> _Team1Name();

      }

      class _Team1Name extends State<Team1Name> {
       
        String series_id;   
       
  


  


      
    String dropdownValueGametype ='T20';
    String game_type='';
          String toss='';
        String  dropdownValueToss='WON';
      
    
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
          bool _validate_series = false;
         bool _validate1a = false;
           bool _validate1b = false;
             bool _validate1c = false;
               bool _validate1d = false;
                 bool _validate1e = false;
                   bool _validate1f = false;
                     bool _validate1g = false;
                       bool _validate1h = false;

 bool _validate_team = false;

                         bool _validate1i = false;
                           bool _validate1j = false;
                             bool _validate1k = false;

                           bool _validate1e1 = false;
                            bool _validate1e2 = false;
                             bool _validate1e3 = false;



   bool _validate2a = false;
              bool _validate2b = false;
                bool _validate2c = false;
                  bool _validate2d = false;
                    bool _validate2e = false;
                      bool _validate2f = false;
                        bool _validate2g = false;
                          bool _validate2h = false;

    bool _validate_teamb = false;

                            bool _validate2i = false;
                             bool _series_name = false;
                              bool _validate2j = false;
                                bool _validate2k = false;

                              bool _validate2e1 = false;
                                bool _validate2e2 = false;
                                bool _validate2e3 = false;
                                  final TextEditingController team2 = TextEditingController();
         
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
      
        bool _validate = false;
      

       
        
     

          
   

          post_information(team1,team1a,team1b,team1c,team1d,team1e,team1f,team1g,team1h,team1i,
          team1j,team1k,team1extra1,team1extra2,team1extra3,series_name,
         
          game_type,toss,
           team2a,team2b,team2c,team2d,team2e,team2f,team2g,
            team2h,team2i,team2j,team2k,team2extra1,team2extra2,team2extra3,team2
          
          ) async {
          SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
          Map data = {
            // 'series_name': series_name,
            'playera1': team1a,
            'playera2': team1b,
              'playera3': team1c,
              'playera4': team1d,
                'playera5': team1e,
                'playera6': team1f,
                  'playera7': team1g,
                  'playera8': team1h,
                    'playera9': team1i,
                    'playera10': team1j,
                      'playera11': team1k,
                      "extra_playera1":team1extra1,
                      "extra_playera2":team1extra2,
                        "extra_playera3":team1extra3,
                        'game_type':game_type,
                        'toss':toss,
                        'team1':team1,

                         'playerb1': team2a,
              'playerb2': team2b,
                'playerb3': team2c,
                'playerb4': team2d,
                  'playerb5': team2e,
                  'playerb6': team2f,
                    'playerb7': team2g,
                    'playerb8': team2h,
                      'playerb9': team2i,
                      'playerb10': team2j,
                        'playerb11': team2k,
                        "extra_playerb1":team2extra1,
                        "extra_playerb2":team2extra2,
                          "extra_playerb3":team2extra3,
                          "team2":team2,
                          'series_name': series_name


                      


        


          };
          var jsonResponse = null;
          var response = await http.post("http://127.0.0.1:8000/score/score-team-1/", body: data);
          if(response.statusCode == 200) {
            jsonResponse = json.decode(response.body);
            if(jsonResponse != null) {
              setState(() {
            
              });
            }
            
          }
          else {
            setState(() {
          
            });
            print(response.body);



          
            

          }
        }

        

       


        
      Widget _ScoreUpdatePage(){
        
     
            return Scaffold(
      
                  body: SingleChildScrollView(
                    
                    child:Column(
                      
                      children: <Widget>[
                        
                          Container(
                        child: Text(
                          'Series Name',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Open Sans',
                  fontSize: 40),
                )
                        
      
      
                        
                          
                        
                          
                        ),
      
        Container(

                          margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) ,
                      

                    ),

                  
                    child:TextField(
                      controller: series_name,
                      decoration: InputDecoration(
                        labelText: "Series name",

  errorText: _validate1c ? 'Value Can\'t Be Empty' : null,
                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        border: OutlineInputBorder()
                      ),

                    ) 
                       

                        


                  ),
                    Container(
                        child: Text(
                          'Team Name',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Open Sans',
                  fontSize: 40),
                )
                        
      
      
                        
                          
                        
                          
                        ),

                        
      
                        Container(

                          
                      
        ),

        

                  

                    // width: MediaQuery.of(context).size.width * 0.70,
                    
                  
                   
                    
                    
                  


                    Container(
                      margin: new EdgeInsets.only(top: 10,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) 
                    ),

                    //  width: MediaQuery.of(context).size.width * 0.50,
                    //   height: MediaQuery.of(context).size.height * 0.30,
                    // padding:EdgeInsets.all(10),
                    child:TextFormField(
                      controller: team1,
                      decoration: InputDecoration(
                        labelText: "Team Name",

                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate_team ? 'Value Can\'t Be Empty' : null,
                        border: OutlineInputBorder()
                      ),

                    )
                  ),
                   Container(
                  child: Text(
                    'Game Type',
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.w100,
            fontStyle: FontStyle.normal,
            fontFamily: 'Open Sans',
            fontSize: 20),
          )
                  


                  
                    
                  
                    
                  ),

                    
                      Container(


margin: new EdgeInsets.only(top: 20, bottom: 50.0,right: 20,left: 30),
                     child: DropdownButtonFormField<String>(
                value: dropdownValueGametype,
                onChanged: (String newValue) {
                  setState(() {dropdownValueGametype = newValue;});
                },
                items: [
                 
                  DropdownMenuItem(
                    child: Text('T20'),
                    value: 'T20',
                  ),
                   DropdownMenuItem(
                    child: Text('ODI'),
                    value: 'ODI',
                  ),
                   DropdownMenuItem(
                    child: Text('TEST'),
                    value: 'TEST',
                  ),
                 
                ],
              ),
                  ),

                  
                
         
       
                   Container(
                  child: Text(
                    'Toss by Team1',
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.w100,
            fontStyle: FontStyle.normal,
            fontFamily: 'Open Sans',
            fontSize: 20),
          )
                  


                  
                    
                  
                    
                  ),

                  Container(

margin: new EdgeInsets.only(left: 20, bottom: 50.0,right: 20),
                     child: DropdownButtonFormField<String>(
                value: dropdownValueToss,
                onChanged: (String newValue) {
                  setState(() {toss = newValue;});
                },
                items: [
                  DropdownMenuItem(
                    child: Text('WON'),
                    value: 'WON',
                  ),
                  DropdownMenuItem(
                    child: Text('LOSE'),
                    value: 'LOSE',
                  ),
                 
                ],
              ),
                  ),



         
        
         
         


          Container(
            margin: new EdgeInsets.only(top: 10),
                  child: Text(
                    'Team 1 Player',

        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.w100,
            fontStyle: FontStyle.normal,
            fontFamily: 'Open Sans',
            fontSize: 40),
            
      )
                  


                  
                    
                  
                    
                  ),
                
                  Container(
                    margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(
                      

                      border:Border.all(color:Colors.blueAccent) ,
                      
                    ),

                   
                    child:TextField(

                      controller: team1a,
                      decoration: InputDecoration(
                        labelText: "Player1",

                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate1a ? 'Value Can\'t Be Empty' : null,
                        border: OutlineInputBorder()
                     
                      ),
                      



                    ),
                  ),
                    Container(
                      margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) 
                    ),

                
                    child:TextFormField(
                      controller: team1b,
                      decoration: InputDecoration(
                        labelText: "Player2",
                        
  errorText: _validate1b ? 'Value Can\'t Be Empty' : null,
                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        border: OutlineInputBorder()
                        
                      ),

                    )
                  ),
                  Container(
                      margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) ,
                      

                    ),

                  
                    child:TextField(
                      controller: team1c,
                      decoration: InputDecoration(
                        labelText: "Player3",

  errorText: _validate1c ? 'Value Can\'t Be Empty' : null,
                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        border: OutlineInputBorder()
                      ),

                    )
                  ),
                  Container(
                      margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) 
                    ),

                   
                    child:TextFormField(
                      controller: team1d,
                      decoration: InputDecoration(
                        labelText: "Player4",

                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate1d ? 'Value Can\'t Be Empty' : null,
                        border: OutlineInputBorder()
                      ),

                    )
                  ),
                  Container(
                      margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) 
                    ),

                   
                    child:TextFormField(
                      controller: team1e,
                      decoration: InputDecoration(
                        labelText: "Player5",

                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate1e ? 'Value Can\'t Be Empty' : null,
                        border: OutlineInputBorder()
                      ),

                    )
                  ),
                  Container(
                      margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) 
                    ),

                  
                    child:TextFormField(
                      controller: team1f,
                      
                      decoration: InputDecoration(
                        labelText: "Player 6",

                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate1f ? 'Value Can\'t Be Empty' : null,
                        border: OutlineInputBorder()
                      ),

                    )
                  ),
                  Container(
                      margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) 
                    ),

                 
                    child:TextFormField(
                      controller: team1g,
                      decoration: InputDecoration(
                        labelText: "Player7",

                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate1g ? 'Value Can\'t Be Empty' : null,
                        border: OutlineInputBorder()
                      ),

                    )
                  ),
                  Container(
                      margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) 
                    ),

                
                    child:TextFormField(
                      controller: team1h,
                      decoration: InputDecoration(
                        labelText: "Player8",

                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate1h ? 'Value Can\'t Be Empty' : null,
                        border: OutlineInputBorder()
                      ),

                    )
                  ),
                  Container(
                      margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) 
                    ),

                   
                    child:TextFormField(
                      controller: team1i,
                      decoration: InputDecoration(
                        labelText: "Player9",

                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate1i ? 'Value Can\'t Be Empty' : null,
                        border: OutlineInputBorder()
                      ),

                    )
                  ),
                  Container(
                      margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) 
                    ),

                  
                    child:TextFormField(
                      controller: team1j,
                      decoration: InputDecoration(
                        labelText: "Player10",

                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate1j ? 'Value Can\'t Be Empty' : null,
                        border: OutlineInputBorder()
                      ),

                    )
                  ),
                  Container(
                      margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) 
                    ),

                  
                    child:TextFormField(
                      controller: team1k,
                      decoration: InputDecoration(
                        labelText: "Player11",

                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate1k ? 'Value Can\'t Be Empty' : null,
                        border: OutlineInputBorder()
                      ),

                    )
                  ),

                  Container(
                      margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) 
                    ),

                   
                    child:TextFormField(
                      controller: team1extra1,
                      decoration: InputDecoration(
                        labelText: "Extra Player1",

                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate1e1 ? 'Value Can\'t Be Empty' : null,
                        border: OutlineInputBorder()
                      ),
                      

                    )
                  ),
                  Container(
                      margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) 
                    ),

                  
                    child:TextFormField(
                      controller: team1extra2,
                      decoration: InputDecoration(
                        labelText: "Extra Player 2",

                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate1e2 ? 'Value Can\'t Be Empty' : null,
                        border: OutlineInputBorder()
                      ),

                    )
                  ),
                  Container(
                      margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topLeft,
                    decoration: BoxDecoration(

                      border:Border.all(color:Colors.blueAccent) 
                    ),

                   
                    child:TextFormField(
                      controller: team1extra3,
                      decoration: InputDecoration(
                        labelText: "Extra Player 3",

                        
                        hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate1e3 ? 'Value Can\'t Be Empty' : null,
                        border: OutlineInputBorder()
                      ),

                    )
                  ),
                  Container(
                          margin: new EdgeInsets.only(top: 10,right: 20,left: 20),
                          alignment: Alignment.topLeft,
                        decoration: BoxDecoration(

                          border:Border.all(color:Colors.blueAccent) 
                        ),

                       
                        child:TextFormField(
                          controller: team2,
                          decoration: InputDecoration(
                            labelText: "Team Name",

                            
                            hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                            errorText: _validate_team ? 'Value Can\'t Be Empty' : null,
                            border: OutlineInputBorder()
                          ),

                        )
                      ),


            Container(
              margin: new EdgeInsets.only(top: 10),
                    child: Text(
                      'Team 2 Player',

          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.w100,
              fontStyle: FontStyle.normal,
              fontFamily: 'Open Sans',
              fontSize: 40),
              
        )
                        
                                  
                    ),
                  
                    Container(
                      margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
                        

                        border:Border.all(color:Colors.blueAccent) ,
                        
                      ),

                     
                      child:TextField(

                        controller: team2a,
                        decoration: InputDecoration(
                          labelText: "Player1",
                          

                          
                          hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                          errorText: _validate2a ? 'This Field may not be blank' : null,
                          border: OutlineInputBorder()
                        ),
                        
                        



                      ),
                    ),
                      Container(
                        margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                        alignment: Alignment.topLeft,
                      decoration: BoxDecoration(

                        border:Border.all(color:Colors.blueAccent) 
                      ),

                     
                      child:TextFormField(
                        controller: team2b,
                        decoration: InputDecoration(
                          labelText: "Player2",
                          
                    errorText: _validate2b ? 'This Field may not be blank' : null,
                          
                          hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                          border: OutlineInputBorder()
                          
                        ),
                    

                      )
                    ),
                    Container(
                        margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                        alignment: Alignment.topLeft,
                      decoration: BoxDecoration(

                        border:Border.all(color:Colors.blueAccent) ,
                        

                      ),

                    
                      child:TextField(
                        controller: team2c,
                        decoration: InputDecoration(
                          labelText: "Player3",
    errorText: _validate2c ? 'This Field may not be blank' : null,
                          
                          hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                          border: OutlineInputBorder()
                        ),

                      )
                    ),
                    Container(
                        margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                        alignment: Alignment.topLeft,
                      decoration: BoxDecoration(

                        border:Border.all(color:Colors.blueAccent) 
                      ),

                     
                      child:TextFormField(
                        controller: team2d,
                        decoration: InputDecoration(
                          labelText: "Player4",

                          
                          hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                          errorText: _validate2d ? 'Value Can\'t Be Empty' : null,
                          border: OutlineInputBorder()
                        ),

                      )
                    ),
                    Container(
                        margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                        alignment: Alignment.topLeft,
                      decoration: BoxDecoration(

                        border:Border.all(color:Colors.blueAccent) 
                      ),

                    
                      child:TextFormField(
                        controller: team2e,
                        decoration: InputDecoration(
                          labelText: "Player5",

                          
                          hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate2e ? 'This Field may not be blank' : null,
                          border: OutlineInputBorder()
                        ),

                      )
                    ),
                    Container(
                        margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                        alignment: Alignment.topLeft,
                      decoration: BoxDecoration(

                        border:Border.all(color:Colors.blueAccent) 
                      ),

                    
                      child:TextFormField(
                        controller: team2f,
                        
                        decoration: InputDecoration(
                          labelText: "Player 6",

                          
                          hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate2f ? 'This Field may not be blank' : null,
                          border: OutlineInputBorder()
                        ),

                      )
                    ),
                    Container(
                        margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                        alignment: Alignment.topLeft,
                      decoration: BoxDecoration(

                        border:Border.all(color:Colors.blueAccent) 
                      ),

                   
                      child:TextFormField(
                        controller: team2g,
                        decoration: InputDecoration(
                          labelText: "Player7",

                          
                          hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                          errorText: _validate2g ? 'This Field may not be blank' : null,
                          border: OutlineInputBorder()
                        ),

                      )
                    ),
                    Container(
                        margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                        alignment: Alignment.topLeft,
                      decoration: BoxDecoration(

                        border:Border.all(color:Colors.blueAccent) 
                      ),

                    
                      child:TextFormField(
                        controller: team2h,
                        decoration: InputDecoration(
                          labelText: "Player8",

                          
                          hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate2h ? 'This Field may not be blank' : null,
                          border: OutlineInputBorder()
                        ),

                      )
                    ),
                    Container(
                        margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                        alignment: Alignment.topLeft,
                      decoration: BoxDecoration(

                        border:Border.all(color:Colors.blueAccent) 
                      ),

                    
                      child:TextFormField(
                        controller: team2i,
                        decoration: InputDecoration(
                          labelText: "Player9",

                          
                          hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate2i ? 'This Field may not be blank' : null,
                          border: OutlineInputBorder()
                        ),

                      )
                    ),
                    Container(
                        margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                        alignment: Alignment.topLeft,
                      decoration: BoxDecoration(

                        border:Border.all(color:Colors.blueAccent) 
                      ),

                     
                      child:TextFormField(
                        controller: team2j,
                        decoration: InputDecoration(
                          labelText: "Player10",

                          
                          hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate2j ? 'This Field may not be blank' : null,
                          border: OutlineInputBorder()
                        ),

                      )
                    ),
                    Container(
                        margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                        alignment: Alignment.topLeft,
                      decoration: BoxDecoration(

                        border:Border.all(color:Colors.blueAccent) 
                      ),

                      
                      child:TextFormField(
                        controller: team2k,
                        decoration: InputDecoration(
                          labelText: "Player11",

                          
                          hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                          errorText: _validate2k ? 'This Field may not be blank' : null,
                          border: OutlineInputBorder()
                        ),

                      )
                    ),
                    Container(
                        margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                        alignment: Alignment.topLeft,
                      decoration: BoxDecoration(

                        border:Border.all(color:Colors.blueAccent) 
                      ),

                      
                      child:TextFormField(
                        controller: team2extra1,
                        decoration: InputDecoration(
                          labelText: "Extra Player1",

                          
                          hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                          errorText: _validate2e1 ? 'This Field may not be blank' : null,
                          border: OutlineInputBorder()
                        ),
                        

                      )
                    ),
                    Container(
                        margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                        alignment: Alignment.topLeft,
                      decoration: BoxDecoration(

                        border:Border.all(color:Colors.blueAccent) 
                      ),

                     
                      child:TextFormField(
                        controller: team2extra2,
                        decoration: InputDecoration(
                          labelText: "Extra Player 2",

                          
                          hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate2e2 ? 'This Field may not be blank' : null,
                          border: OutlineInputBorder()
                        ),

                      )
                    ),
                    Container(
                        margin: new EdgeInsets.only(top: 20,right: 20,left: 20),
                        alignment: Alignment.topLeft,
                      decoration: BoxDecoration(

                        border:Border.all(color:Colors.blueAccent) 
                      ),

                     
                      child:TextFormField(
                        controller: team2extra3,
                        decoration: InputDecoration(
                          labelText: "Extra Player 3",

                          
                          hintStyle: TextStyle(fontWeight: FontWeight.w100,color: Colors.blueAccent),
                        errorText: _validate2e3 ? 'This Field may not be blank' : null,
                          border: OutlineInputBorder()
                        ),

                      )
                    ),

                  






                  Container(
                  margin: new EdgeInsets.only(top: 20),  
    color: Colors.blue,
    width: 200,
    
                  child:RaisedButton(
                    

                      onPressed: 

                    
                      () {
                        

                        setState(() {

  if (
                       team1a.text == ""  || team1b.text ==  ""|| team1c.text == ""
                      || team1d.text ==  "" || team1e.text == "" || team1f.text ==""  || team1g.text == "" || team1h.text == ""
                      || team1i.text ==""  || team1j.text == "" || team1k.text ==""  || team1extra1.text == "" || team1extra2.text == "" || team1extra3.text == "" 
                         || team2a.text == ""  || team2.text == ""
                        || team2b.text == "" || team2c.text == "" 
                        || team2d.text == "" || team2e.text == "" || team2f.text == "" || team2g.text == "" || team2h.text == ""
                        || team2i.text == "" || team2j.text == "" || team2k.text == "" || team2extra1.text == "" || team2extra2.text == "" || team2extra3.text == "" 
                      )
                      
                      {



                         
                        
                            team1a.text.isEmpty ? _validate1a = true : _validate1a = false;
                              team1b.text.isEmpty ? _validate1b = true : _validate1b = false;
                              team1c.text.isEmpty ? _validate1c = true : _validate1c = false;
                                team1d.text.isEmpty ? _validate1d = true : _validate1d = false;
                                team1e.text.isEmpty ? _validate1e = true : _validate1e = false;
                                  team1f.text.isEmpty ? _validate1f = true : _validate1f = false;

                                  team1g.text.isEmpty ? _validate1g = true : _validate1g = false;
                                    team1h.text.isEmpty ? _validate1h = true : _validate1h = false;

                                    team1i.text.isEmpty ? _validate1i = true : _validate1i = false;
                                      team1j.text.isEmpty ? _validate1j = true : _validate1j = false;
                                      team1k.text.isEmpty ? _validate1k = true : _validate1k = false;
                                        team1extra1.text.isEmpty ? _validate1e1 = true : _validate1e1 = false;
                                        team1extra2.text.isEmpty ? _validate1e2 = true : _validate1e2 = false;

                                        team1extra3.text.isEmpty ? _validate1e3 = true : _validate1e3 = false;
                                        team1.text.isEmpty ? _validate_team = true : _validate_team = false;
                                         team2.text.isEmpty ? _validate_team = true : _validate_team = false;

                                    team2a.text.isEmpty ? _validate2a = true : _validate2a = false;
                                  team2b.text.isEmpty ? _validate2b = true : _validate2b = false;
                                  team2c.text.isEmpty ? _validate2c = true : _validate2c = false;
                                    team2d.text.isEmpty ? _validate2d = true : _validate2d = false;
                                    team2e.text.isEmpty ? _validate2e = true : _validate2e = false;
                                      team2f.text.isEmpty ? _validate2f = true : _validate2f = false;

                                      team2g.text.isEmpty ? _validate2g = true : _validate2g = false;
                                        team2h.text.isEmpty ? _validate2h = true : _validate2h = false;

                                        team2i.text.isEmpty ? _validate2i = true : _validate2i = false;
                                          team2j.text.isEmpty ? _validate2j = true : _validate2j = false;
                                          team2k.text.isEmpty ? _validate2k = true : _validate2k = false;
                                            team2extra1.text.isEmpty ? _validate2e1 = true : _validate2e1 = false;
                                            team2extra2.text.isEmpty ? _validate2e2 = true : _validate2e2 = false;

                                            team2extra3.text.isEmpty ? _validate2e3 = true : _validate2e3 = false;
                                          
                                   
                                   
                                        



  }

  // else {

  //     Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => Team2Name()),
  //   );
  // };
                            
                           


            
            });
            
              post_information(team1.text,series_name.text,
              team1a.text,team1b.text,team1c.text,team1d.text,team1e.text,team1f.text,team1g.text,team1h.text,
              team1i.text,team1j.text,team1k.text,team1extra1.text,team1extra2.text,team1extra3.text,game_type,toss, team2a.text,team2b.text,team2c.text,team2d.text,team2e.text,team2f.text,team2g.text,team2h.text,
                team2i.text,team2j.text,team2k.text,team2extra1.text,team2extra2.text,team2extra2.text,team2.text
          
          );


 
            },
            
            elevation: 0.0,
            padding: const EdgeInsets.all(20),
            
            child: Text("Next", style: TextStyle(color: Colors.green)),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    
                    
                  )




                  )


                ],
                
                

                  
            
              ),
            


            ),
          );
        

      }

        @override
        Widget build(BuildContext context){


          return Scaffold(
            appBar: AppBar(
              title: Text("Score", style: TextStyle(color: Colors.white)),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                  
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
                    
                  },
                  child: Text("Log Out", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            body: _ScoreUpdatePage(),
          
          );
        }


        
      }