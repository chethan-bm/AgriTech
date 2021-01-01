import 'package:flutter/material.dart';
import 'package:micro_solutions/Crop%20Health/Crop%20helath.dart';
import 'package:micro_solutions/Screens/Valvecontrol.dart';
import 'package:micro_solutions/Screens/Welcome/welcome_screen.dart';
import 'package:micro_solutions/data/data.dart';
import 'package:micro_solutions/model/best_selling_model.dart';
import 'package:micro_solutions/model/trending_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}
class _HomeScreen extends State<HomeScreen> {
  List<TrendingModel> trendingData = new List();
  List<BestSellingModel> bestSellingData = new List();
// This widget is the root of your application.
  void initState() {
    trendingData = getTrendingData();
    bestSellingData = getBestSellingData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Farm Deatils'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomeScreen();
                  },
                ),
              );
            },
          )
        ],
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
          child: ListView(children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  // Material(
                  //   elevation: 4,
                  //   shadowColor: Colors.grey.withOpacity(0.3),
                  //   borderRadius: BorderRadius.circular(4),
                  //   child: Container(
                  //     decoration: BoxDecoration(color: Colors.white,
                  //         borderRadius: BorderRadius.circular(4)
                  //     ),
                  //     padding: EdgeInsets.symmetric(horizontal: 16),
                  //
                  //     height: 55,
                  //     child: Row(children: <Widget>[
                  //       Expanded(
                  //         child: TextField(
                  //           decoration: InputDecoration(
                  //               hintText: "Search",
                  //               border: InputBorder.none
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(width: 16,),
                  //       InkWell(
                  //           onTap: (){
                  //             print("you clicked search icon");
                  //           },
                  //           child: Icon(Icons.search))
                  //     ],),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 45,
                  // ),
                  // Row(
                  //   children: <Widget>[
                  //     Text("Todays Trending", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, color: Color(0xff000000)),),
                  //     SizedBox(
                  //       width: 8,
                  //     ),
                  //     Text("20th May", style: TextStyle(color: Colors.grey),),
                  //   ],),

                  Container(
                    height: 140,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: trendingData.length,
                        itemBuilder: (context, index){
                          return TrendingTile(
                            imgAssetPath: trendingData[index].imgAssetPath,
                            productName: trendingData[index].productName,
                          );
                        }
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Crop Health', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),),
                  
                  Container(
                    height: 160,
                    child: GestureDetector(
                      child: Stack(
                        children: <Widget> [
                          Image.asset('assets/images/crop_graph.png',
                            // height: 10,
                            width: 600,
                            fit: BoxFit.fill,)
                        ],
                      ),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context){
                              return Crophealth();
                            },
                          ),);
                      },
                    )
                  ),
                  SizedBox(height: 30,),
                  Row(

                    children: <Widget>[
                      Text("Valve Control", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24, color: Color(0xff000000)),),
                      SizedBox(
                        width: 8,
                      ),
                      // Text("This week", style: TextStyle(color: Colors.grey),),
                      Spacer(),
                      // Text("See all", style: TextStyle(color: Color(0xff557AC7)),)
                    ],),

                  SizedBox(height: 16,),
                  Container(
                    height: 210,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context){
                              return Valvecontrol();
                            },
                          ),);
                      },
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: bestSellingData.length,
                          itemBuilder: (context, index){
                            return BestSellingTile(
                              imgaeAssetPath: bestSellingData[index].imgaeAssetPath,
                              title: bestSellingData[index].title,
                            );
                          }),
                    ),
                  ),

                ],),
            ),
          ],)
      ),
    );
  }
}

class TrendingTile extends StatelessWidget {
  final String imgAssetPath;
  final String productName;

  TrendingTile(
      {
      this.productName,
      this.imgAssetPath});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(3),
      shadowColor: Colors.grey.withOpacity(0.2),
      child: Container(
        height: 170,
        margin: EdgeInsets.only(right: 16),
        padding: EdgeInsets.only(left: 16),
        child: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    imgAssetPath,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(left: 8, top: 8),
                  //   padding: EdgeInsets.all(8),
                  //   decoration: BoxDecoration(
                  //       gradient: LinearGradient(colors: [
                  //     const Color(0xff8EA2FF).withOpacity(0.5),
                  //     const Color(0xff557AC7).withOpacity(0.5)
                  //   ])),
                  //   width: 50,
                  // )
                ],
              ),
            ),
            SizedBox(
              width: 2,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    productName,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500, ),
                  ),

                  // SizedBox(
                  //   height: 8,
                  // ),

                  // SizedBox(
                  //   height: 16,
                  // ),

                  // Button
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             //builder: (context) => SomeOtherScreen()
                  //             ));
                  //     print("you clicked me");
                  //   },
                  //   child: Container(
                  //     padding:
                  //         EdgeInsets.symmetric(horizontal: 24, vertical: 11),
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(4),
                  //         gradient: LinearGradient(colors: [
                  //           const Color(0xff8EA2FF),
                  //           const Color(0xff557AC7)
                  //         ])),
                  //     child: Text(
                  //       "Add to cart",
                  //       style: TextStyle(color: Colors.white, fontSize: 16),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BestSellingTile extends StatelessWidget {

  final String imgaeAssetPath;
  final String title;

  BestSellingTile({ @required this.title, @required this.imgaeAssetPath});


  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        margin: EdgeInsets.only(right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(children: <Widget>[
              Image.asset(imgaeAssetPath,width: 120,),
            ],),
            SizedBox(height: 16,),
            Text(title),
          ],)
    );
  }
}

