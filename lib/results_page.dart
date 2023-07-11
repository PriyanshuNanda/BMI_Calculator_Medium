import 'package:bmi/contain.dart';
import 'package:bmi/stlescontain.dart';
import 'package:flutter/material.dart';
class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key, required this.bmi,required this.inter,required this.res});

  final String bmi;
  final String inter;
  final String res;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('BMI Calculator',style: TextStyle(fontFamily: 'Ag',fontSize:30,),),
        backgroundColor: Colors.cyan[800],
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex:1,child: Text('Your Result',style: kTitleStyle,)),
            Expanded(flex:5,child: MyFixedContainer(
              colorer: activeColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(res,style: const TextStyle(color: Color(0xff24d876),fontSize:25,),),
                  Text(bmi,style: const TextStyle(color: Color(0xff24d876),fontSize:100,),),
                  Text(inter,textAlign: TextAlign.center,style: const TextStyle(color: Color(0xffffffff),fontSize:25,),)
                ],
              ),
            ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                decoration:  const BoxDecoration(
                  color: Color(0xff00838f),
                ),
                child: Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Re-Calculate',
                        style: TextStyle(
                          fontSize: 50,color: Colors.white,fontFamily: 'Ag',
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
