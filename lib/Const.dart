import 'package:flutter/material.dart';
const title= TextStyle(
  color: Colors.black87,fontWeight: FontWeight.bold,
  fontSize: 18,
);
const subtitle= TextStyle(
  color: Colors.black87,
  fontSize: 15,
  fontWeight: FontWeight.bold,
);
var subtitleType2 =TextStyle(
  color: Colors.black54,
  fontSize: 15,
  fontWeight: FontWeight.w500,

);
Color getTextColor(String type){
  return type=="SELL"||type=="Strong Sell"?Colors.pink:type=="BUY"||type=="Buy"?Colors.blue:type=="NEUTRRAL"?Colors.grey:Colors.black87;
}
class BuildPivotPoints extends StatelessWidget {
  const BuildPivotPoints({
    this.title,
    this.trailing
  }) ;
  final String title;
  final String trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(leading:Text(title,style: subtitleType2,) ,trailing:Text(trailing,style:subtitle) );
  }
}

class BuildTitle extends StatelessWidget {
  const BuildTitle({
    this.titleText
    ,
  }) ;
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Text(titleText,style: title,);
  }
}

class BuildButton extends StatelessWidget {
  const BuildButton({
    this.string,

  }) ;

  final String string;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed: () {}, child: Text(string,style: TextStyle( color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.w500,),),color:getTextColor(string),
      shape: RoundedRectangleBorder(


      ),);
  }
}

class BuildTitleType1 extends StatelessWidget {
  const BuildTitleType1({
    this.title,
    this.value,
    this.type
  }) ;
  final String title;
  final String value;
  final String type;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: BuildColumn(titleText: title,subtitleText: "Buy",),
        title:BuildColumn(titleText: value,subtitleText:"Neutral" ,),
        trailing:BuildColumn(titleText: type,subtitleText:"Sell" ,)


    );
  }
}

class BuildColumn extends StatelessWidget {
  const BuildColumn({
    this.titleText,
    this.subtitleText,
  }) ;

  final String  titleText;
  final  String subtitleText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titleText,style: subtitle,) ,
        Text(subtitleText,style: subtitleType2,),
      ],
    );
  }
}

class BuildListTile extends StatelessWidget {
  const BuildListTile({
    this.value,this.title,
    this.type
  }) ;
  final String  title;
  final String  value;
  final String  type;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(title,style: subtitle),
      title: Center(child: Text(value,style: subtitle)),
      trailing: Text(type,style: subtitle.copyWith(color:getTextColor(type))),
    );
  }
}

class BuildTitleBar extends StatelessWidget {
  const BuildTitleBar({
    this.title,
    this.value,
    this.type
  });
  final  String title;
  final  String value;
  final String type;

  @override
  Widget build(BuildContext context) {
    return ListTile(

      tileColor: Colors.grey[200],
      leading: Text(title,style: subtitleType2,),
      title: Center(child: Text(value,style: subtitleType2,)),
      trailing: Text(type,style: subtitleType2,),
    );
  }
}
