

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';


class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _HomeState();
}

class _HomeState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
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
          const CircleAvatar(
            backgroundImage: AssetImage("assets/profile.png"),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 60,
            child: InkWell(
              onTap: () {},
              child: Card(
                margin: const EdgeInsets.all(10),
                elevation: 56,
                color: Color.fromARGB(66, 131, 127, 127),
                child: Text("All",
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
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
                color: Color.fromARGB(66, 131, 127, 127),
                child: Text("Podcast",
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
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
                color: Color.fromARGB(66, 131, 127, 127),
                child: Text("Artist",
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
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
                color: Color.fromARGB(66, 131, 127, 127),
                child: Text("Songs",
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic,
                            color: Colors.white))),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 23,
      ),
     Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage("https://img.pikbest.com/ai/illus_our/20230426/6aac6537d0b52d006eae0212e8e7a1ad.jpg!f305cw"),
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            "ARTIST",
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 23,
          ),
          
        ],
      ),
       SizedBox(
          height: 300,
          child: GridView.count(
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
               children: <Widget>[
            Container(
              padding: const EdgeInsets.all(1),
              color: Color.fromARGB(66, 180, 176, 176),
              child: Image(image: AssetImage('assets/1.webp')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Color.fromARGB(66, 180, 176, 176),
              child: Image(image: AssetImage('assets/1.webp')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Color.fromARGB(66, 180, 176, 176),
              child: Image(image: AssetImage('assets/1.webp')),
            ),
            Container(
              padding: const EdgeInsets.all(1),
              color: Color.fromARGB(66, 180, 176, 176),
              child: Image(image: AssetImage('assets/1.webp')),
            ),
               ]
            
          )
       ),
       SizedBox(
        height: 50,
       ),
        Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("assets/best.jpg"),
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            "SONGS",
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 23,
          ),
          
        ],
      ),
      SizedBox(
        height: 23,
      ),
      Container(
        color: Colors.black,
        child: Image(
          image: NetworkImage(
            "https://media.ipassio.com/media/blog/10-easy-bollywood-hindi-songs-to-sing-for-beginners/blog_icon/easy-hindi-songs-to-sing-for-beginners.webp",
          ),
        ),
      ),
       SizedBox(
        height: 23,
      ),
      Container(
        color: Colors.black,
        child: Image(
          image: NetworkImage(
            "https://assets.teenvogue.com/photos/64a5ba095699418416716eba/16:9/w_2560%2Cc_limit/1474272248",
          ),
        ),
      ),
       SizedBox(
        height: 23,
      ),
      Container(
        color: Colors.black,
        child: Image(
          image: NetworkImage(
            "https://imageio.forbes.com/specials-images/imageserve/65ea25f84bca0b21467c85bf/The-Bodyguard/960x0.jpg?format=jpg&width=960",
          ),
        ),
      ),
       SizedBox(
        height: 23,
      ),
      Container(
        color: Colors.black,
        child: Image(
          image: NetworkImage(
            "https://static01.nyt.com/images/2024/05/08/multimedia/03KEEP-GOING-REVIEW-mjql/03KEEP-GOING-REVIEW-mjql-articleLarge.jpg?quality=75&auto=webp&disable=upscale",
          ),
        ),
      ),
       SizedBox(
        height: 23,
      ),
      Container(
        color: Colors.black,
        child: Image(
        image: NetworkImage(
            "https://i.ytimg.com/vi/1lpqa2FygsI/maxresdefault.jpg",
          ),
        ),
      ),
       SizedBox(
        height: 23,
      ),
      Container(
        color: Colors.black,
        child: Image(
          image: NetworkImage(
            "https://res.cloudinary.com/jerrick/image/upload/v1675965937/63e535f11be4bb001dd89d0b.jpg",
          ),
        ),
      ),
    
      //  SizedBox(
      //     height: 200, // adjust the height to your needs
      //     child: GridView.builder(
      //       itemCount: 10,
      //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 3,
      //         crossAxisSpacing: 5,
      //         mainAxisSpacing: 5,
      //       ),
      //       shrinkWrap: true,
      //       physics: const NeverScrollableScrollPhysics(),
      //       itemBuilder: (context, index) {
      //         return Image.asset(
      //           'assets/1.webp', 
      //           fit: BoxFit.cover,
      //         );
      //       },
      //     )
      //  )
    ],
  ),
),
             
              )
            
            
        
          
        );
    
    
  }
}