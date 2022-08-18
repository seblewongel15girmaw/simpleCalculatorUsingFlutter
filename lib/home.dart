import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double  num1=0;
  double num2=0;
  String number="";
  String oprator="";
  String tempnum="";

  Widget button(String str){

    return Expanded(child: OutlinedButton(
      onPressed: (){
        calc(str);

    }, child: Padding(
      padding: const EdgeInsets.all(20),
      child: Text("$str"),
    ),
  
    ));
  }

  void calc(str){

    if(str=="/" || str=="x" ||str=="-" || str=="+"){
       num1=double.parse(number);
       number=number+str;
       oprator=str;
        print("$num1 num1");

    }

    else if(str=="="){
      
      num2=double.parse(tempnum);
      tempnum="";
      print("$num2 num2");
      if(oprator=="+"){
        number=(num1+num2).toString();
         print("$number number");
        

      }
      else if(oprator=="x"){
          number=(num1*num2).toString();
      }
      else if(oprator=="/"){
        number=(num1/num2).toString();
      }
      else{
          number=(num1-num2).toString();
      }

    }
    else if(str=="Clear"){
      number="";
      oprator="";
      num1=0;
      num2=0;
      tempnum="";
    }
    else{
      if(oprator!=''){
        
        tempnum+=str;
        number+=str;
         print("$tempnum tempnum");
          print("$number number");

      }

      else
      {
             number+=str;
             print("$number number");
      }

     

    }
    setState(() {
      
    });


  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Simple Calculator"),
      
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 15),
              child: Text(
                number==""?"0":number,
            
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),),
            alignment: Alignment.centerRight,)
            
            

          ),
          Expanded(child: Divider()),
          Column(
            
            children: [
              Row(
              children: [
                button("7"),
                button("8"),
                button("9"),
                button("/")
              ],
            ),
          
          Row(
            children: [
              button("4"),
              button("5"),
              button("6"),
              button("x")
            ],
          ),
          Row(
            children: [
              button("1"),
              button("2"),
              button("3"),
              button("-")
            ],
          ),
          Row(
            children: [
              button("-"),
              button("0"),
              button("00"),
              button("+")
            ],
          ),
          Row(
            children: [
              button("Clear"),
              button("="),
              
            ],
          ),
                ]
          )
           


          

            ],

          ),
        
        


  
    );
    
  }
}