

import 'package:app/add.dart';
import 'package:app/artist.dart';
import 'package:app/main.dart';
import 'package:app/profile.dart';
import 'package:app/second.dart';
import 'package:app/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        key: key,
         drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                  decoration: const BoxDecoration(color: Colors.black87),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
  child: Container(
    width: 60,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage('assets/profile.png'),
      ),
    ),
  ),
  onTap: () {
       Navigator.push(context, MaterialPageRoute(builder: (context) =>const Profile(),));
  },
  splashColor: Colors.grey, 
  highlightColor: Colors.transparent, 
  radius: 30, 
),
                       const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Anuvarshini",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          Text(
                            "view profile",style:TextStyle(color: Colors.white,) 
                          ),
                        ],
                      )
                    ],
                  )),
              customList(Icons.add, 'Add account', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  Login(),
                    ),
                  );
                
              }),
              customList(Icons.bolt, 'What\'s new', () {
                
              }),
              customList(Icons.history_toggle_off_outlined, 'Listening history', () {
                 
              
              }),
              customList(Icons.settings, 'Settings and privacy', () {
               Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  Settings(),
                    ),
                  );
              }),
               
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text("Spotify",
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 27, 223, 106),
                      fontWeight: FontWeight.bold,
                      fontSize: 30))),
          leading: const Image(image: AssetImage("assets/icon.jpeg")),
        ),
       body: SingleChildScrollView(
  child: Column(
    
    children: [
      Row(
        
        children: [
          InkWell(
            onTap: () {

                   key.currentState!.openDrawer();
},
            child: Container(
              padding: const EdgeInsets.only(left: 1),
              height:40,
              width: 40,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/profile.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 60,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>const Home(),));
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>const homepage(),));
              },
              child: Card(
                margin: const EdgeInsets.all(10),
                elevation: 56,
                color: const Color.fromARGB(66, 131, 127, 127),
                child: Text("All",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic,
                            color: Colors.white))),
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: InkWell(
              onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>const Home(),));  
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const homepage(),));     
              },
              child: Card(
                margin: const EdgeInsets.all(10),
                elevation: 56,
                color: const Color.fromARGB(66, 131, 127, 127),
                child: Text("Music",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic,
                            color: Colors.white))),
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: InkWell(
              onTap: () {},
              child: Card(
                margin: const EdgeInsets.all(10),
                elevation: 56,
                color: const Color.fromARGB(66, 131, 127, 127),
                child: Text("Podcast",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic,
                            color: Colors.white))),
              ),
            ),
          ),
          SizedBox(
            width: 100,
            child: InkWell(
              onTap: () {},
              child: Card(
                margin: const EdgeInsets.all(10),
                elevation: 56,
                color: const Color.fromARGB(66, 131, 127, 127),
                child: Text("Artist",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic,
                            color: Colors.white))),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 23,
      ),
     Row(
        children: [
          const CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage("https://img.pikbest.com/ai/illus_our/20230426/6aac6537d0b52d006eae0212e8e7a1ad.jpg!f305cw"),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            "ARTIST",
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 23,
          ),
          
        ],
      ),
       SizedBox(
          height: 250,
          child: GridView.count(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          scrollDirection: Axis.horizontal,
          
               children: <Widget>[
                
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Artist(),));
              
              },
              child: Container(
                
                padding: const EdgeInsets.all(1),
                color: const Color.fromARGB(66, 180, 176, 176),
                  child: Stack(
                  children: [
                    const Image(image: AssetImage('assets/1.webp' )),
                    Text("A R RAHMAN",style: GoogleFonts.lato(textStyle:const TextStyle(fontSize: 18,fontStyle: FontStyle.italic,color: Colors.white,fontWeight: FontWeight.bold)),) 
                  ],
                  
                ),
              ),
            ),
            
            
             InkWell(
              onTap: (){

              },
               child: Container(
                padding: const EdgeInsets.all(1),
                color: const Color.fromARGB(66, 180, 176, 176),
                child: Stack(
                  children: [
                    const Image(image: AssetImage('assets/1.webp' )),
                    Text("A R RAHMAN",style: GoogleFonts.lato(textStyle:const TextStyle(fontSize: 18,fontStyle: FontStyle.italic,color: Colors.white,fontWeight: FontWeight.bold)),) 
                  ],
                  
                ),
               
                           ),
             ),
          
             InkWell(
              onTap: (){

              },
               child: Container(
                padding: const EdgeInsets.all(1),
                color: const Color.fromARGB(66, 180, 176, 176),
                child: Stack(
                  children: [
                    const Image(image: AssetImage('assets/1.webp' )),
                    Text("A R RAHMAN",style: GoogleFonts.lato(textStyle:const TextStyle(fontSize: 18,fontStyle: FontStyle.italic,color: Colors.white,fontWeight: FontWeight.bold)),) 
                  ],
                  
                ),
               
                           ),
             ),
             InkWell(
              onTap: (){},
               child: Container(
                padding: const EdgeInsets.all(1),
                color: const Color.fromARGB(66, 180, 176, 176),
                child: Stack(
                  children: [
                    const Image(image: AssetImage('assets/1.webp' )),
                    Text("A R RAHMAN",style: GoogleFonts.lato(textStyle:const TextStyle(fontSize: 18,fontStyle: FontStyle.italic,color: Colors.white,fontWeight: FontWeight.bold)),) 
                  ],
                  
                ),
               
                           ),
             ),
             InkWell(
              onTap: () {
                
              },
               child: Container(
                padding: const EdgeInsets.all(1),
                color: const Color.fromARGB(66, 180, 176, 176),
                child: Stack(
                  children: [
                    const Image(image: AssetImage('assets/1.webp' )),
                    Text("A R RAHMAN",style: GoogleFonts.lato(textStyle:const TextStyle(fontSize: 18,fontStyle: FontStyle.italic,color: Colors.white,fontWeight: FontWeight.bold)),) 
                  ],
                  
                ),
               
                           ),
             ),
              InkWell(
                onTap: () {
                  
                },
                child: Container(
                padding: const EdgeInsets.all(1),
                color: const Color.fromARGB(66, 180, 176, 176),
                child: Stack(
                  children: [
                    const Image(image: AssetImage('assets/1.webp' )),
                    Text("A R RAHMAN",style: GoogleFonts.lato(textStyle:const TextStyle(fontSize: 18,fontStyle: FontStyle.italic,color: Colors.white,fontWeight: FontWeight.bold)),) 
                  ],
                  
                ),
                
                            ),
              ),
             InkWell(
              onTap: () {
                
              },
               child: Container(
                padding: const EdgeInsets.all(1),
                color: Color.fromARGB(66, 180, 176, 176),
                child: Stack(
                  children: [
                    const Image(image: AssetImage('assets/1.webp' )),
                    Text("A R RAHMAN",style: GoogleFonts.lato(textStyle:const TextStyle(fontSize: 18,fontStyle: FontStyle.italic,color: Colors.white,fontWeight: FontWeight.bold)),) 
                  ],
                  
                ),
               
                           ),
             ),
              InkWell(
              onTap: () {
                
              },
               child: Container(
                padding: const EdgeInsets.all(1),
                color: Color.fromARGB(66, 180, 176, 176),
                child: Stack(
                  children: [
                    const Image(image: AssetImage('assets/1.webp' )),
                    Text("A R RAHMAN",style: GoogleFonts.lato(textStyle:const TextStyle(fontSize: 18,fontStyle: FontStyle.italic,color: Colors.white,fontWeight: FontWeight.bold)),) 
                  ],
                  
                ),
               
                           ),
             ),
               InkWell(
              onTap: () {
                
              },
               child: Container(
                padding: const EdgeInsets.all(1),
                color: Color.fromARGB(66, 180, 176, 176),
                child: Stack(
                  children: [
                    const Image(image: AssetImage('assets/1.webp' )),
                    Text("A R RAHMAN",style: GoogleFonts.lato(textStyle:const TextStyle(fontSize: 18,fontStyle: FontStyle.italic,color: Colors.white,fontWeight: FontWeight.bold)),) 
                  ],
                  
                ),
               
                           ),
             ),
             InkWell(
              onTap: () {
                
              },
               child: Container(
                padding: const EdgeInsets.all(1),
                color: Color.fromARGB(66, 180, 176, 176),
                child: Stack(
                  children: [
                    const Image(image: AssetImage('assets/1.webp' )),
                    Text("A R RAHMAN",style: GoogleFonts.lato(textStyle:const TextStyle(fontSize: 18,fontStyle: FontStyle.italic,color: Colors.white,fontWeight: FontWeight.bold)),) 
                  ],
                  
                ),
               
                           ),
             ),
               ]
            
          )
       ),
       const SizedBox(
        height: 50,
       ),
        Row(
        children: [
          const CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("assets/best.jpg"),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            "SONGS",
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 23,
          ),
          
        ],
      ),
      const SizedBox(
        height: 23,
      ),
      InkWell(
        onTap: () {
          
        },
        child: Container(
          color: Colors.black,
          child: const Image(
            image: NetworkImage(
              "https://media.ipassio.com/media/blog/10-easy-bollywood-hindi-songs-to-sing-for-beginners/blog_icon/easy-hindi-songs-to-sing-for-beginners.webp",
            ),
          ),
        ),
      ),
      Row(
        children: [
          Text("Your\'s favorite",style: GoogleFonts.lato(textStyle:TextStyle(fontStyle: FontStyle.italic,color: Colors.white,fontSize: 30)),)
        ],
      ),
       const SizedBox(
        height: 23,
      ),
      InkWell(
        onTap: () {
          
        },
        child: Container(
          color: Colors.black,
          child: const Image(
            image: NetworkImage(
              "https://assets.teenvogue.com/photos/64a5ba095699418416716eba/16:9/w_2560%2Cc_limit/1474272248",
            ),
          ),
        ),
      ),
      Row(
        children: [
          Text("Daily Mix",style: GoogleFonts.lato(textStyle:TextStyle(fontStyle: FontStyle.italic,color: Colors.white,fontSize: 30)),)
        ],
      ),
       const SizedBox(
        height: 23,
      ),
      InkWell(
        onTap: () {
          
        },
        child: Container(
          color: Colors.black,
          child: const Image(
            image: NetworkImage(
              "https://imageio.forbes.com/specials-images/imageserve/65ea25f84bca0b21467c85bf/The-Bodyguard/960x0.jpg?format=jpg&width=960",
            ),
          ),
        ),
      ),
      Row(
        children: [
          Text("Recommended Station",style: GoogleFonts.lato(textStyle:TextStyle(fontStyle: FontStyle.italic,color: Colors.white,fontSize: 30)),)
        ],
      ),
       const SizedBox(
        height: 23,
      ),
      InkWell(
        onTap: () {
          
        },
        child: Container(
          color: Colors.black,
          child: const Image(
            image: NetworkImage(
              "https://static01.nyt.com/images/2024/05/08/multimedia/03KEEP-GOING-REVIEW-mjql/03KEEP-GOING-REVIEW-mjql-articleLarge.jpg?quality=75&auto=webp&disable=upscale",
            ),
          ),
        ),
      ),
      Row(
        children: [
          Text("Made for you",style: GoogleFonts.lato(textStyle:TextStyle(fontStyle: FontStyle.italic,color: Colors.white,fontSize: 30)),)
        ],
      ),
       const SizedBox(
        height: 23,
      ),
      InkWell(
        onTap: () {
          
        },
        child: Container(
          color: Colors.black,
          child: const Image(
          image: NetworkImage(
              "https://i.ytimg.com/vi/1lpqa2FygsI/maxresdefault.jpg",
            ),
          ),
        ),
      ),
      Row(
        children: [
          Text("Episodes for you",style: GoogleFonts.lato(textStyle:const TextStyle(fontStyle: FontStyle.italic,color: Colors.white,fontSize: 30)),)
        ],
      ),
       const SizedBox(
        height: 23,
      ),
      InkWell(
        onTap: () {
          
        },
        child: Container(
          color: Colors.black,
          child: const Image(
            image: NetworkImage(
              "https://res.cloudinary.com/jerrick/image/upload/v1675965937/63e535f11be4bb001dd89d0b.jpg",
            ),
          ),
        ),
      ),
      Row(
        children: [
          Text("Recently played",style: GoogleFonts.lato(textStyle:const TextStyle(fontStyle: FontStyle.italic,color: Colors.white,fontSize: 30)),)
        ],
      ),
    ],
  ),
),
             
              )  
        );  
  }
}
 customList(IconData icon, String title, dynamic ontap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: ontap,  
      ),
    );
  }

