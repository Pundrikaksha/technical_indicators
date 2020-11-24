import 'package:flutter/material.dart';
import 'Module.dart';
import 'Const.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
          title: Text(
            "Sensex",
            style:title,
          ),
          elevation: 0.0,
        ),
        body: IndianIndices(),
      ),
    );
  }
}

class IndianIndices extends StatefulWidget {

  @override
  _IndianIndicesState createState() => _IndianIndicesState();
}

class _IndianIndicesState extends State<IndianIndices> {
  MovingAverages movingAverages=MovingAverages();

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(

       children: [

         Column(
           children: [
             BuildTitle(titleText: "MovingAverage",),
             BuildButton(string:"Buy",),

             BuildTitleType1(
                 title: "7",
                 value: "-",
                 type:"5"

             ),
             BuildTitleBar(
                 title: "TITLE",
               value: "VALUE ",
               type: "TYPE ",
             ),

             ListView.builder(  shrinkWrap: true,itemCount: movingAverageData.length,
                 physics: ScrollPhysics(),itemBuilder: (context, index){

               return(
                   BuildListTile(
                     title: movingAverageData[index].title,
                     value: movingAverageData[index].value,
                     type: movingAverageData[index].type,
                   ));
             } ),
           ],
         ),
         SizedBox(
           height:20 ,
         ),
         Column(
           children: [
             BuildTitle(titleText: "Technical Indicators",),
             BuildButton(string:"Strong Sell",),

             BuildTitleType1(
                 title: "1",
                 value: "1",
                 type:"9"

             ),
             BuildTitleBar(
               title: "NAME",
               value: "ACTION",
               type: "VALUE",
             ),

             ListView.builder(  shrinkWrap: true,itemCount: movingAverageData.length,
                 physics: ScrollPhysics(),itemBuilder: (context, index){

                   return(
                       BuildListTile(
                         title: technicalIndicatorData[index].name,
                         value: technicalIndicatorData[index].action,
                         type: technicalIndicatorData[index].value,
                       ));
                 } ),
           ],
         ),
         Column(
           children: [
             BuildTitle(
               titleText: "Pivot Points",
             ),
             ListView.builder(  shrinkWrap: true,itemCount: movingAverageData.length,
                 physics: ScrollPhysics(),itemBuilder: (context, index){

                   return(
                       BuildPivotPoints(title: pivotPointData[index].name ,trailing: pivotPointData[index].value,));
                 } )

           ],
         )

       ],
      ),
    );
  }
}

