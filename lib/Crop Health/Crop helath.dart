import 'package:flutter/material.dart';

class Crophealth extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      appBar: AppBar(
      centerTitle: true,
      title: Column(
        children: [
          Text('Crop Health'),
          Text('Last 30 days', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),),
        ],
      ),
      backgroundColor: Colors.green,
    ),
     body: SafeArea(
       child: ListView(
         children: <Widget>[
          Stack(
           children: <Widget>[
           Column(
             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [

                   Container(
                     decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)
                       ),
                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20,),
                     child: Column(
                       // mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                       Text('97', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, ),),
                       Text('Mostiure', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, ),),
                     ],
                   ),
                   ),
                     Container(
                       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)
                       ),
                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20,),
                       child: Column(
                         children: [
                           Text('10', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, ),),
                           Text('Humidity', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, ),),
                         ],
                       ),
                     ),
                     Container(
                       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)
                       ),
                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20,),
                       child: Column(
                         // mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('30', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, ),),
                           Text('Water Pressure', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, ),),
                         ],
                       ),
                     ),
                 ],
               ),
               Divider(
                 thickness:2,
                 color: Colors.black12,
               ),
               Container(
                   decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(30)),
                   child: Image.asset('assets/images/crop_graph.png', height: 300, width: 500, fit: BoxFit.fill,)),
               Divider(
                 thickness:2,
                 color: Colors.black12,
               ),
               Column(
                 children: [
                   SizedBox(
                     height: 50,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                       Text('Moisture is 80% Good Compare with All Other Users', textAlign:(TextAlign.center ) ,style: TextStyle(fontSize: 17, )),
                       ],),
                   ),

                   SizedBox(
                     height: 50,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Text('Humidity is very less', textAlign:(TextAlign.center ) ,style: TextStyle(fontSize: 17, )),
                       ],),
                   ),
                   SizedBox(
                     height: 50,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Text('Moisture is 80% Good Compare with All Other Users', textAlign:(TextAlign.center ) ,style: TextStyle(fontSize: 17, )),
                       ],),
                   ),
                   SizedBox(
                     height: 50,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Text('Humidity is very less', textAlign:(TextAlign.center ) ,style: TextStyle(fontSize: 17, )),
                       ],),
                   ),
                   SizedBox(
                     height: 50,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Text('Moisture is 80% Good Compare with All Other Users', textAlign:(TextAlign.center ) ,style: TextStyle(fontSize: 17, )),
                       ],),
                   ),
                   SizedBox(
                     height: 50,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Text('Humidity is very less', textAlign:(TextAlign.center ) ,style: TextStyle(fontSize: 17, )),
                       ],),
                   ),
                   SizedBox(
                     height: 50,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Text('Moisture is 80% Good Compare with All Other Users', textAlign:(TextAlign.center ) ,style: TextStyle(fontSize: 17, )),
                       ],),
                   ),
                   SizedBox(
                     height: 50,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Text('Humidity is very less', textAlign:(TextAlign.center ) ,style: TextStyle(fontSize: 17, )),
                       ],),
                   ),
                 ],
               ),
             ],

           ),


           ],
         ),],
       ),
     )
    );
  }
}