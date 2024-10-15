import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 128, 225, 180),
              Color.fromARGB(255, 60, 65, 70)
            ],
          ),
        ),
        
        child: Expanded(
          child: Column(
            
            children: [
             
              SizedBox(
                height: 80,
              ),
              Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    InkWell(
      onTap: (){
       Navigator.pop(context);
      },
      child: Icon(Icons.arrow_back_ios, color: Colors.white,),
    ),
  ]
              ),
            
              const SizedBox(height: 20),
             const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text(
                        'ANUVARSHINI',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                '0\nFollowers',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 35),
                          Column(
                            children: [
                              Text(
                                '0\nFollowing',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                 
                ],
              ),
              const SizedBox(
                
                height: 10,
              ),
          Row(
            children: [
              ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Color.fromARGB(255, 227, 227, 227),
                        ),
                        onPressed: () {},
                        child: const Text('Edit '),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: (){
          
                        },
                        child:
                       Icon(Icons.more_vert,color: Colors.white,)),
            ],
          ),
          SizedBox(
            height: 50,
          ),
              Text("No recent activity",style: GoogleFonts.lato(textStyle:TextStyle(fontSize: 35,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white)),)    
            ],
            
          ),
            
        ),
        
      ),
      
    );
  }
}