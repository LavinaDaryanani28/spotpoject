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
          "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
      "songname": "Lorem Ipsum1",
      "threedot": Icons.more_vert,
    },
    {
      "image":
          "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
      "songname": "Lorem Ipsum1",
      "threedot": Icons.more_vert,
    },
    {
      "image":
          "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
      "songname": "Lorem Ipsum1",
      "threedot": Icons.more_vert,
    },
    {
      "image":
          "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
      "songname": "Lorem Ipsum1",
      "threedot": Icons.more_vert,
    },
    {
      "image":
          "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
      "songname": "Lorem Ipsum1",
      "threedot": Icons.more_vert,
    },
  ];
  final ScrollController _controller = ScrollController();
  final double _height = 100.0;

  void _animateToIndex(int index) {
    _controller.animateTo(
      index * _height,
      duration: Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

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
                  "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
                  fit: BoxFit.fill,opacity: const AlwaysStoppedAnimation(.7),
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
                      TextButton(onPressed: (){}, child:UiHelper.customText("About", Colors.green, 20),),
                      TextButton(onPressed: (){}, child:UiHelper.customText("Album", Colors.green, 20),),
                      Spacer(),
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
                    // mainAxisAlignment: MainAxisAlignment.end,
                  ),
                  SizedBox(height: 10,),
                  UiHelper.customText("Popular", Colors.white, 25),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading:
                        UiHelper.customText((index+1).toString(), Colors.white, 15),
                        title: Container(
                          height: 50,
                          width: 50,
                          child: Row(
                            children: [
                              Image.network(
                                arrContent[index]["image"].toString() as String,fit: BoxFit.contain,
                              ),
                                    SizedBox(width: 15,),
                              UiHelper.customText(arrContent[index]["songname"].toString(), Colors.white, 20),
                              // Text(arrContent[index]["songname"].toString()),
                            ],
                          ),
                        ),
                        // subtitle: Text(arrContent[index]["songname"].toString()),
                        trailing: IconButton(onPressed: (){},icon:Icon(Icons.more_vert),
                              color: Colors.white,
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
                      return ListTile(
                        title: Container(
                          height: 50,
                          width: 50,
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
                              // Text(arrContent[index]["songname"].toString()),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: arrContent.length,
                  ),
                  Container(
                    child: Text("About"),
                  )
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
