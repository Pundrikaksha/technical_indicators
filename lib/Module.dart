class MovingAverages{
  String title;
 String value;
String  type;
  MovingAverages({this.title,this.value,this.type});

}
class PivotPoints{
  String name;
  String value;
  PivotPoints({this.value,this.name});
}
class TechnicalIndicator{
  String name;
  String action;
  String  value;
TechnicalIndicator({this.value,this.action,this.name});

}
List<MovingAverages> movingAverageData=[
  MovingAverages(title:"MA10",value:"465.28" ,type: "SELL"),
  MovingAverages(title:"MA20",value:"465.28" ,type: "BUY"),
  MovingAverages(title:"MA50",value:"465.28" ,type: "BUY"),
  MovingAverages(title:"MA100",value:"465.28" ,type: "SELL"),
  MovingAverages(title:"MA200",value:"465.28" ,type: "BUY"),
];
List<TechnicalIndicator> technicalIndicatorData=[
  TechnicalIndicator(name:"RSI(14)",action:"-53.6549" ,value: "SELL"),
  TechnicalIndicator(name:"STOCH(9,6)",action:"-53.6549" ,value: "SELL"),
  TechnicalIndicator(name:"MA50",action:"-53.6549" ,value: "BUY"),
  TechnicalIndicator(name:"MA100",action:"-53.6549" ,value: "SELL"),
  TechnicalIndicator(name:"MA200",action:"-53.6549" ,value: "BUY"),
];
List<PivotPoints> pivotPointData=[
  PivotPoints(name: "S3",value: "456.87"),
  PivotPoints(name: "S2",value: "456.87"),
  PivotPoints(name: "S1",value: "456.87"),
  PivotPoints(name: "PIVOT POINTS",value: "456.87"),
  PivotPoints(name: "R1",value: "456.87"),
  PivotPoints(name: "R2",value: "456.87"),
  PivotPoints(name: "R3",value: "456.87"),

];