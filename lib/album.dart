import 'package:flutter/material.dart';

import 'UiHelper.dart';

class Album extends StatefulWidget {
  const Album({super.key});

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ExpansionTile(
                      leading: Image.network(
                        "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
                        height: 70,
                        width: 70,
                        fit: BoxFit.fill,
                      ),
                      title: UiHelper.customText("Account", Colors.white, 20),
                      childrenPadding: EdgeInsets.only(left: 40),
                      children: [
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context,index){
                            return ListTile(
                              title: UiHelper.customText(arrContent[index]["songname"].toString(), Colors.white, 15),
                              subtitle: UiHelper.customText("Arijit Singh", Colors.white, 15),
                              onTap: () {},
                            );
                          },itemCount: arrContent.length,),
                      ],
                    ),
                    SizedBox(height: 20,),
                    ExpansionTile(
                      leading: Image.network(
                        "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
                        height: 70,
                        width: 70,
                        fit: BoxFit.fill,
                      ),
                      title: UiHelper.customText("Account", Colors.white, 20),
                      childrenPadding: EdgeInsets.only(left: 40),
                      children: [
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context,index){
                            return ListTile(
                              title: UiHelper.customText(arrContent[index]["songname"].toString(), Colors.white, 15),
                              subtitle: UiHelper.customText("Arijit Singh", Colors.white, 15),
                              onTap: () {},
                            );
                          },itemCount: arrContent.length,),
                      ],
                    ),
                    ExpansionTile(
                      leading: Image.network(
                        "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
                        height: 70,
                        width: 70,
                        fit: BoxFit.fill,
                      ),
                      title: UiHelper.customText("Account", Colors.white, 20),
                      childrenPadding: EdgeInsets.only(left: 40),
                      children: [
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context,index){
                            return ListTile(
                              title: UiHelper.customText(arrContent[index]["songname"].toString(), Colors.white, 15),
                              subtitle: UiHelper.customText("Arijit Singh", Colors.white, 15),
                              onTap: () {},
                            );
                          },itemCount: arrContent.length,),
                      ],
                    ),
                    ExpansionTile(
                      leading: Image.network(
                        "https://m.media-amazon.com/images/I/610FLv2T1QL._AC_UF1000,1000_QL80_.jpg",
                        height: 70,
                        width: 70,
                        fit: BoxFit.fill,
                      ),
                      title: UiHelper.customText("Account", Colors.white, 20),
                      childrenPadding: EdgeInsets.only(left: 40),
                      children: [
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context,index){
                            return ListTile(
                              title: UiHelper.customText(arrContent[index]["songname"].toString(), Colors.white, 15),
                              subtitle: UiHelper.customText("Arijit Singh", Colors.white, 15),
                              onTap: () {},
                            );
                          },itemCount: arrContent.length,),
                      ],
                    ),
                  ],
                ),
              )

              // ListView.builder(
              //   physics: NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   itemBuilder: (context, index) {
              //     return ListTile(
              //       leading:
              //       UiHelper.customText((index+1).toString(), Colors.white, 15),
              //       title: Container(
              //         height: 50,
              //         width: 50,
              //         child: Row(
              //           children: [
              //             Image.network(
              //               arrContent[index]["image"].toString() as String,fit: BoxFit.contain,
              //             ),
              //             SizedBox(width: 15,),
              //             UiHelper.customText(arrContent[index]["songname"].toString(), Colors.white, 20),
              //             // Text(arrContent[index]["songname"].toString()),
              //           ],
              //         ),
              //       ),
              //       // subtitle: Text(arrContent[index]["songname"].toString()),
              //       trailing: IconButton(onPressed: (){},icon:Icon(Icons.more_vert),
              //         color: Colors.white,
              //       ),
              //     );
              //   },
            ],
          ),
      ),
    );
  }
}
