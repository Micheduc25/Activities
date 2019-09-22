import 'package:flutter/material.dart';
import './headerIcon.dart';
import './listItem.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home:Scaffold(

        body: Container(
          decoration:BoxDecoration(
            color:Colors.black
          ),

          child:Stack(
            

          children:[ ListView(
            // padding:EdgeInsets.only(bottom: 40),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[


                   ListItem( date:"Tuesday 8:30pm" ,title:"READ INSPIRING QUOTES OUT LOUD" , itemColor: Colors.blue[900],itemHeight: 800) ,
            
                   

                   ListItem( date:"Thursday 5:00am" ,title:"DRINK TWO CUPS OF DARK COFFEE" , itemColor: Colors.blue[800],itemHeight: 640,), 
                 

                 
                ListItem( date:"Tuesday 5:30am" ,title:"CRAZY EFFECT MUSIC HAS ON THE BRAIN" , itemColor: Colors.blue[600],itemHeight: 480,),
            

              
                ListItem(date:"Monday 2:12pm", title:"HARDWORK IS THE ONLY WAY", itemColor: Colors.blue[300],itemHeight: 320,),

                
                  Container(
                    height: 160,
                    width: double.infinity,
            decoration:BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
            
            ),
            padding: EdgeInsets.only(left: 10, right: 10,top:30,bottom: 30),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    HeaderIcon(label: "HEALTH",myico: Icons.favorite_border ),

                    HeaderIcon(label: "MUSIC", myico: Icons.headset,),
                    HeaderIcon(label: "PHONE", myico: Icons.phone_android)
                  ],
            ) ,
          ),
    
                  ]

              ),
 
            ],
          ),
          
           Positioned(
            bottom: 0,
            right: 0,
            child:
           Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                Padding(
                  padding: EdgeInsets.only(right:5,bottom: 5),
                  child:
              FloatingActionButton(
                
                backgroundColor: Colors.white,
                onPressed: (){
                  print("floating button was pressed");
                },

                child: Icon(Icons.add ,size: 30, color: Colors.black,),
              ),
              )
              ],
              ),
              )
          
          ]

          ),
        ),

        
        ),

      

    );
      
  }
}



