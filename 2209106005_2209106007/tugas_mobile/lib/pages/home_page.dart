import 'package:flutter/material.dart';
import 'package:tugas_mobile/util/category_card.dart';
import 'package:tugas_mobile/util/listview_recently.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  //nama
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hallo",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        "Ladies and Gentlemen",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,),),
                    ],
                  ),

                  //foto profil
                  Container(
                    padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                ],
              ),
            ),

            const SizedBox(height: 25,),
        
            //card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(children: [
                  //foto 
                  Container(
                    height: 100,
                    width: 100,
                    //color: Colors.deepPurple[200],
                    child: Image.asset(
                      "lib/images/musicapp.jpg",
                      height: 100,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
              
                  //button
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "How do you feel?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white
                          ),
                        ),
                        const SizedBox(height: 12,),
                        const Text(
                          "Find your musics right now!",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white
                          ),
                        ),
                        const SizedBox(height: 12,),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                    ],),
                  ),
                ],),
              ),
            ),

            const SizedBox(height: 25,),
        
            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "Search ...",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25,),
        
            //horizontal listview
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    categoryName: "All",
                    iconImagePath: "lib/icons/music.png",
                  ),
                  CategoryCard(
                    categoryName: "Artist",
                    iconImagePath: "lib/icons/artist.png"
                  ),
                  CategoryCard(
                    categoryName: "Music",
                    iconImagePath: "lib/icons/musical-note.png"
                  ),
                  CategoryCard(
                    categoryName: "Podcast",
                    iconImagePath: "lib/icons/microphone.png"
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),
        
            //artist list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recently Played",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListviewRecently(
                    foto: "lib/images/lemon.jpeg",
                    rating: "4.8",
                    judul: "Lemon",
                    artist: "Kenshi Yonezu",
                  ),
                  ListviewRecently(
                    foto: "lib/images/bungamatahari.jpeg",
                    rating: "4.6",
                    judul: "Gala bunga matahari",
                    artist: "Sal Priadi",
                  ),
                  ListviewRecently(
                    foto: "lib/images/feelalive.jpeg",
                    rating: "4.1",
                    judul: "feel alive!",
                    artist: "niko rain",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}