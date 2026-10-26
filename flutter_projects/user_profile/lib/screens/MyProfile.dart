import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget{
  const MyProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Profile'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Column(
           mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                   color: Colors.blueGrey[600],

                   child:Center(

                       child: Text(
                         "Profile Section",
                         style: TextStyle(
                           fontSize: 25,
                           fontWeight: FontWeight.bold,
                           color: Colors.white,
                         ),
                       ),

                 )),
                 SizedBox(height: 20,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Center(
                       child:Text(
                         "Full Name: ",
                         style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.bold,
                         ),
                       )
                     ),
                     Center(
                       child:Text(
                         "Ubaid Ahmad Gul",
                         style: TextStyle(
                           fontSize: 15,
                         )
                       )
                     )
                   ]
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Center(
                       child:Text(
                         "Profession:",
                         style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.bold,
                         ),
                       )
                     ),
                     Center(
                       child:Text(
                         "BSCS Student",
                         style: TextStyle(
                           fontSize: 15,
                         )
                       )
                     )
                   ],
                 )
               ]
             ),
             SizedBox(height: 20),
             Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                   color: Colors.blueGrey[600],
                   child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Center(

                           child: Text(
                               "User Infrormation",
                               style: TextStyle(
                                 fontSize: 25,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               )
                           ))
                     ]
                   )
                 ),
                 Padding(padding: EdgeInsets.all(20),
                 child:Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Row(

                       children: [
                         Icon(
                           Icons.email_outlined,
                           color: Colors.blue,
                           size: 24,
                         ),
                         SizedBox(width: 10),
                         Text(
                           'ahmadubaidedu@gmail.com',
                           style: TextStyle(fontSize: 16),
                         ),
                       ],
                     ),
                     Row(

                       children: [
                         Icon(
                           Icons.phone_android_outlined,
                           color: Colors.blue,
                           size: 24,
                         ),
                         SizedBox(width: 10),
                         Text(
                           '+923428994095',
                           style: TextStyle(fontSize: 16),
                         ),
                       ],
                     ),
                     Row(

                       children: [
                         Icon(
                           Icons.location_on_outlined,
                           color: Colors.blue,
                           size: 24,
                         ),
                         SizedBox(width: 10),
                         Text(
                           'Khyber Pakhtunkhwa,Lahore, Pakistan',)
                       ],
                     )
                   ],
                 ))

               ]
             ),
             SizedBox(height: 20),
             Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                   color: Colors.blueGrey[600],
                   child:Center(
                     child: Text(
                       "Action Buttons",
                       style: TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.bold,
                         color: Colors.white,
                       ),
                     ),
                   ),),
                 Padding(padding: EdgeInsets.all(20),
                 child:Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.blue,
                       foregroundColor: Colors.white,
                     ),
                     onPressed: () {
                       // Handle button press
                     },
                     child: Text('Follow'),
                   ),
                     SizedBox(width: 20),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.blue,
                         foregroundColor: Colors.white,
                       ),
                       onPressed: () {
                         // Handle button press
                       },
                       child: Text('Message'),
                     )],
                 )
                 )

               ]
             ),
             SizedBox(height: 20),
             Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                   color: Colors.blueGrey[600],
                   child:Center(
                     child: Text(
                       "About Me",
                       style: TextStyle(
                         fontSize: 25,
                         fontWeight: FontWeight.bold,
                         color: Colors.white,
                       ),
                     ),
                   ),),
                 Padding(padding: EdgeInsets.all(20),
                   child: Center(
                       child: Text(
                         "I am A BSCS 6th semester Student, and a full stack web developer.I am currently learning flutter to impeove my skill level to a next level.",
                       )
                   ),
                 )


               ],
             ),
           ],
        ),
    );
  }
}