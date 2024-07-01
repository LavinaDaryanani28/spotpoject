import 'package:spotify/UiHelper.dart';
import 'package:flutter/material.dart';

class Artist extends StatefulWidget {
  const Artist({super.key});

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {
  var arrContent = [
    {
      "image":
          "https://assets.telegraphindia.com/telegraph/2023/Aug/1692339492_arijit-singh.jpg",
      "songname": "Lorem Ipsum1",
      "threedot": Icons.more_vert,
    },
    {
      "image":
          "https://assets.telegraphindia.com/telegraph/2023/Aug/1692339492_arijit-singh.jpg",
      "songname": "Lorem Ipsum1",
      "threedot": Icons.more_vert,
    },
    {
      "image":
          "https://assets.telegraphindia.com/telegraph/2023/Aug/1692339492_arijit-singh.jpg",
      "songname": "Lorem Ipsum1",
      "threedot": Icons.more_vert,
    },
    {
      "image":
          "https://assets.telegraphindia.com/telegraph/2023/Aug/1692339492_arijit-singh.jpg",
      "songname": "Lorem Ipsum1",
      "threedot": Icons.more_vert,
    },
    {
      "image":
          "https://assets.telegraphindia.com/telegraph/2023/Aug/1692339492_arijit-singh.jpg",
      "songname": "Lorem Ipsum1",
      "threedot": Icons.more_vert,
    },
    {
      "image":
          "https://assets.telegraphindia.com/telegraph/2023/Aug/1692339492_arijit-singh.jpg",
      "songname": "Lorem Ipsum1",
      "threedot": Icons.more_vert,
    },
    {
      "image":
          "https://assets.telegraphindia.com/telegraph/2023/Aug/1692339492_arijit-singh.jpg",
      "songname": "Lorem Ipsum1",
      "threedot": Icons.more_vert,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(alignment: Alignment.bottomLeft, children: [
              Container(
                child: Image.network(
                  "https://assets.telegraphindia.com/telegraph/2023/Aug/1692339492_arijit-singh.jpg",
                  fit: BoxFit.fill,
                ),
                width: double.infinity,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Positioned(
                    child: Text("Arijit Singh",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.bold))),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.shuffle,
                          color: Colors.green,
                          size: 25,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle,
                            color: Colors.green,
                            size: 35,
                          )),
                    ],
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                  UiHelper.customText("Popular", Colors.white, 25),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      // return ListTile(
                      //   leading: Text((index+1).toString()),
                      //   title: Image.network(
                      //     arrContent[index]["image"].toString() as String,
                      //     height: 50,width: 20,fit: BoxFit.fill,
                      //   ),
                      //   subtitle: Text(arrContent[index]["songname"].toString()),
                      //   trailing: Icon(Icons.more_vert),
                      // );
                      return Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: [
                            Text((index + 1).toString(),style: TextStyle(color: Colors.white),),
                            SizedBox(width: 20,),
                            Image.network(
                              arrContent[index]["image"].toString() as String,
                              height: 50,
                              width: 50,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(width: 15,),
                            Text(arrContent[index]["songname"].toString(),style: TextStyle(color: Colors.white),),
                            // SizedBox(width: 20,),
                            Align(
                                child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),color: Colors.green,),
                            alignment: Alignment.bottomRight,)
                            // IconButton(onPressed: (){},icon:
                            //   Icons.more_vert,
                            //   color: Colors.green,
                            // ),
                          ],
                        ),
                      );
                    },
                    itemCount: arrContent.length,
                  ),
                  SizedBox(height: 20,),
                  UiHelper.customText("Popular releases", Colors.white, 25),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      // return ListTile(
                      //   leading: Text((index+1).toString()),
                      //   title: Image.network(
                      //     arrContent[index]["image"].toString() as String,
                      //     height: 50,width: 20,fit: BoxFit.fill,
                      //   ),
                      //   subtitle: Text(arrContent[index]["songname"].toString()),
                      //   trailing: Icon(Icons.more_vert),
                      // );
                      return Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: [
                            Image.network(
                              arrContent[index]["image"].toString() as String,
                              height: 70,
                              width: 70,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(width: 15,),
                            Text(arrContent[index]["songname"].toString(),style: TextStyle(color: Colors.white),),
                            // IconButton(onPressed: (){},icon:
                            //   Icons.more_vert,
                            //   color: Colors.green,
                            // ),
                          ],
                        ),
                      );
                    },
                    itemCount: arrContent.length,
                  ),
                  // );
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
