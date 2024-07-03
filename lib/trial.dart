import 'package:flutter/material.dart';
import 'package:spotify/Library.dart';
import 'package:spotify/SideNavBar.dart';
import 'package:spotify/UiHelper.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:spotify/top_bar.dart';

class Trial extends StatefulWidget {
  const Trial({super.key});

  @override
  State<Trial> createState() => _TrialState();
}

class _TrialState extends State<Trial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidenavbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.center,
                    colors:
                    [Color(0xff7f4053),Colors.black38],
                  )
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SliverStickyHeaderBuilder(builder: (context,i)=>Text("Good morning")),
                      // CustomScrollView(
                      //   slivers: [
                      //     SliverAppBar(
                      //       backgroundColor: Colors.black,
                      //       title: Text("Good morning"),
                      //       floating: true,
                      //       pinned: true,
                      //     )
                      //   ],
                      // ),
                      // TopBar(),
                      UiHelper.customText("Good Morning!", Colors.white, 30),
                      SizedBox(height: 10,),

                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Search',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                      SizedBox(height: 30,),
                      UiHelper.customText("Top Artist", Colors.white, 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width:20,),
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://https://i.scdn.co/image/ab67616d00001e021ad922dae0ba39e07cc15038",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      UiHelper.customText("India's Best", Colors.white, 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width:20,),
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      UiHelper.customText("Songs that you may like", Colors.white, 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width:20,),
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      UiHelper.customText("Top Mixes", Colors.white, 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://i.scdn.co/image/ab67706c0000da84c6567ac6fe1cb8b9ad541b52",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width:20,),
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://i.scdn.co/image/ab67616d0000b273459c4f1a89716e40ed5ff12b",height: 150,width: 120,),
                            SizedBox(width: 20,),
                            Image.network("https://https://i.scdn.co/image/ab67616d0000b2735c2e8fa840241ce6adf33a35",height: 150,width: 120,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,

    );

  }
}