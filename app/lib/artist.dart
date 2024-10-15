import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Artist extends StatefulWidget {
  const Artist({super.key});

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text("Spotify",
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    color: Color.fromARGB(255, 27, 223, 106),
                    fontWeight: FontWeight.bold,
                    fontSize: 30))),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Image(image: AssetImage("assets/icon.jpeg")),
        ),
      ),
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
               child: Image.network("https://img.republicworld.com/tr:w-600,q-75,f-auto/rimages/wp6373917-170452887987516_9.webp"),
            ),
           SizedBox(
            height: 25,
           ),
          Container(
  height: 50,
  width: 350, // Increase the width to fit the image and text
  margin: EdgeInsets.only(right: 310),
  child: Row(
    children: [
      Container(
        width: 40, // Set a fixed width for the image
        height: 40, // Set a fixed height for the image
        child: Image.network(
          "https://img.republicworld.com/tr:w-600,q-75,f-auto/rimages/wp6373917-170452887987516_9.webp",
          fit: BoxFit.cover, // Add this line to resize the image
        ),
      ),
      SizedBox(width: 10), // Add some space between the image and the text
      Text("SONGS ", style: TextStyle(color: Colors.white)),
    ],
  ),
),
           
            SizedBox(
            height: 35,
           ),
              Container(
              height: 50,
              width: 100,
            
              margin: EdgeInsets.only(right: 310),
               child: Image.network("https://img.republicworld.com/tr:w-600,q-75,f-auto/rimages/wp6373917-170452887987516_9.webp"),
            ),     
            SizedBox(
            height: 35,
           ),
              Container(
              height: 50,
              width: 100,
            
              margin: EdgeInsets.only(right: 310),
               child: Image.network("https://img.republicworld.com/tr:w-600,q-75,f-auto/rimages/wp6373917-170452887987516_9.webp"),
            ),     
            SizedBox(
            height: 35,
           ),
              Container(
              height: 50,
              width: 100,
            
              margin: EdgeInsets.only(right: 310),
               child: Image.network("https://img.republicworld.com/tr:w-600,q-75,f-auto/rimages/wp6373917-170452887987516_9.webp"),
            ),     
            SizedBox(
            height: 35,
           ),
              Container(
              height: 50,
              width: 100,
            
              margin: EdgeInsets.only(right: 310),
               child: Image.network("https://img.republicworld.com/tr:w-600,q-75,f-auto/rimages/wp6373917-170452887987516_9.webp"),
            ),     
            SizedBox(
            height: 35,
           ),
              Container(
              height: 50,
              width: 100,
            
              margin: EdgeInsets.only(right: 310),
               child: Image.network("https://img.republicworld.com/tr:w-600,q-75,f-auto/rimages/wp6373917-170452887987516_9.webp"),
            ),     
            SizedBox(
            height: 35,
           ),
              Container(
              height: 50,
              width: 100,
            
              margin: EdgeInsets.only(right: 310),
               child: Image.network("https://img.republicworld.com/tr:w-600,q-75,f-auto/rimages/wp6373917-170452887987516_9.webp"),
            ),     
            SizedBox(
            height: 35,
           ),
              Container(
              height: 50,
              width: 100,
            
              margin: EdgeInsets.only(right: 310),
               child: Image.network("https://img.republicworld.com/tr:w-600,q-75,f-auto/rimages/wp6373917-170452887987516_9.webp"),
            ),  
            SizedBox(
            height: 35,
           ),
              Container(
              height: 50,
              width: 100,
            
              margin: EdgeInsets.only(right: 310),
               child: Image.network("https://img.republicworld.com/tr:w-600,q-75,f-auto/rimages/wp6373917-170452887987516_9.webp"),
            ),     
            SizedBox(
            height: 35,
           ),
              Container(
              height: 50,
              width: 100,
            
              margin: EdgeInsets.only(right: 310),
               child: Image.network("https://img.republicworld.com/tr:w-600,q-75,f-auto/rimages/wp6373917-170452887987516_9.webp"),
            ),     
            SizedBox(
            height: 35,
           ),
              Container(
              height: 50,
              width: 100,
            
              margin: EdgeInsets.only(right: 310),
               child: Image.network("https://img.republicworld.com/tr:w-600,q-75,f-auto/rimages/wp6373917-170452887987516_9.webp"),
            ),     
            SizedBox(
            height: 35,
           ),
              Container(
              height: 50,
              width: 100,
            
              margin: EdgeInsets.only(right: 310),
               child: Image.network("https://img.republicworld.com/tr:w-600,q-75,f-auto/rimages/wp6373917-170452887987516_9.webp"),
            ),          
                
          ]      
        ),     
          
        ),
      
    );
  }
}