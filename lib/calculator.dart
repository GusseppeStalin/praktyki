import 'package:flutter/material.dart';
import 'var.dart';

const TextStyle kTextButton = TextStyle(color: Colors.grey, fontSize: 40);
const TextStyle bTextButton = TextStyle(color: Colors.cyan, fontSize: 40);

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cal \n   Culator'),
      ),
      body: Container(alignment: Alignment.bottomCenter, decoration: const BoxDecoration(image: DecorationImage(image: NetworkImage('https://media.discordapp.net/attachments/687605830119718915/1047450043961065542/waltuh.png?width=468&height=468'))), child: Column(
        children: [
          Container(height: 100, alignment:Alignment.centerRight, child:
          Column(children:
          [
            Text(
              equation,
              style: TextStyle(fontSize: 32, color: Colors.white.withOpacity(0.8))),
            SizedBox(height: 50,),
          ],),),
          Container(alignment:Alignment.centerRight, child:
            Column(children:
                [
              Text(
                  result,
                  style: TextStyle(fontSize: 56, color: Colors.white.withOpacity(0.9))),
                  SizedBox(height: 180,)
            ],),),
          Container(child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              TextButton(onPressed: () {
                setState(() {
                  equation= '';
                });
              }, child: Text('C', style: bTextButton,)),
              TextButton(onPressed: () {
                setState(() {
                  equation='🍝impastaඞ';
                });
              }, child: Text('ඞ', style: bTextButton,)),
              TextButton(onPressed: () {
                setState(() {
                  equation+='%';
                });
              }, child: Text('%', style: bTextButton,)),
              TextButton(onPressed: () {
                setState(() {
                  equation+=' / ';
                });
              }, child: Text('/', style: bTextButton,)),
            ],),),
          Container(child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              TextButton(onPressed: () {
                setState(() {
                  equation+= '7';
                });
              }, child: Text('7', style: kTextButton,)),
              TextButton(onPressed: () {
                setState(() {
                  equation+= '8';
                });
              }, child: Text('8', style: kTextButton,)),
              TextButton(onPressed: () {
                setState(() {
                  equation+= '9';
                });
              }, child: Text('9', style: kTextButton,)),
              TextButton(onPressed: () {
                setState(() {
                  equation+=' x ';
                });
              }, child: Text('X', style: bTextButton,)),
            ],),), Container(child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextButton(onPressed: () {
              setState(() {
                equation+='4';
              });
            }, child: Text('4', style: kTextButton,)),
            TextButton(onPressed: () {
              setState(() {
                equation+='5';
              });
            }, child: Text('5', style: kTextButton,)),
            TextButton(onPressed: () {
              setState(() {
                equation+='6';
              });
            }, child: Text('6', style: kTextButton,)),
            TextButton(onPressed: () {
              setState(() {
                equation+=' - ';
              });
            }, child: Text('-', style: bTextButton,)),
          ],),),
          Container(child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextButton(onPressed: () {
              setState(() {
                equation+='1';
              });
            }, child: Text('1', style: kTextButton,)),
            TextButton(onPressed: () {
              setState(() {
                equation+='2';
              });
            }, child: Text('2', style: kTextButton,)),
            TextButton(onPressed: () {
              setState(() {
                equation+='3';
              });
            }, child: Text('3', style: kTextButton,)),
            TextButton(onPressed: () {
              setState(() {
                equation+=' + ';
              });
            }, child: Text('+', style: bTextButton,)),
          ],),),
          Container(child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextButton(onPressed: () {
              setState(() {
                equation+='00';
              });
            }, child: Text('00', style: kTextButton,)),
            TextButton(onPressed: () {
              setState(() {
                equation+='0';
              });
            }, child: Text('0', style: kTextButton,)),
            TextButton(onPressed: () {
              setState(() {
                equation+=',';
              });
            }, child: Text(',', style: kTextButton,)),
            TextButton(onPressed: () {
              setState(() {
                Calculations();
                }
              );
            }, child: Text('=', style: bTextButton,)),
          ],),),
        ],
      ),),
    );
  }
}
