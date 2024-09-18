import 'package:flutter/material.dart';

class ListviewRecently extends StatelessWidget {
  final String foto;
  final String rating;
  final String judul;
  final String artist;

  ListviewRecently({
    required this.foto,
    required this.rating,
    required this.judul,
    required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //foto
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                foto,
                height: 50,
              ),
            ),
            const SizedBox(height: 10,),
      
            //rating
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                Text(
                  rating,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
      
            //judul
            Text(
              judul,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10,),
      
            //artist
            Text(
              artist,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}