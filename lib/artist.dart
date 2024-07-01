import 'package:flutter/material.dart';

class Artist extends StatefulWidget {
  const Artist({super.key});

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Container(
          //   foregroundDecoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: NetworkImage(
          //             'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAw1_00y4YhsVN6tmQly3a-tO1igM8i1-K8Q&s'),
          //         fit: BoxFit.fill),
          //   ),
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //       alignment: Alignment(-.2, 0),
          //       image: NetworkImage(
          //           'http://www.naturerights.com/blog/wp-content/uploads/2017/12/Taranaki-NR-post-1170x550.png'),
          //       fit: BoxFit.cover),
          // ),
          // )
          Stack(children: [
            Container(
              child: Image.network(
                "https://assets.telegraphindia.com/telegraph/2023/Aug/1692339492_arijit-singh.jpg",
                fit: BoxFit.fill,
              ),
              width: double.infinity,
              height: 200,
            ),
            Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Text("Arijit Singh",
                        style: TextStyle(
                          color: Colors.white,
                        )))
          ]),
        ],
      ),
      // backgroundColor: Colors.black,
    );
  }
}
