import 'package:bmi/brain.dart';

import 'results_page.dart';
import 'package:flutter/material.dart';
import 'contain.dart';
import 'stlescontain.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});
  final String title;
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int maleCardColor = activeColor;
  int femaleCardColor = activeColor;
  void updateColor(Gender gender) {
    if (gender == Gender.male) {
      if(maleCardColor == passiveColor)
          {maleCardColor = activeColor;femaleCardColor=passiveColor;}
          else{ maleCardColor = passiveColor;femaleCardColor=activeColor;}
    } else {
      if(femaleCardColor == activeColor)
          {femaleCardColor = passiveColor;maleCardColor=activeColor;}
          else{ femaleCardColor = activeColor;maleCardColor=passiveColor;}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: Colors.cyan[800],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //part 1 gender selection
              Expanded(
                flex: 20,
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                updateColor(Gender.male);
                              });
                            },
                            child: MyFixedContainer(
                              childCard: const MyIcon(
                                  iccon: FontAwesomeIcons.mars, texxt: "MALE"),
                              colorer: maleCardColor,
                            ))),
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                updateColor(Gender.female);
                              });
                            },
                            child: MyFixedContainer(
                              childCard: const MyIcon(
                                  iccon: FontAwesomeIcons.venus,
                                  texxt: 'FEMALE'),
                              colorer: femaleCardColor,
                            ))),
                  ],
                ),
              ),
              //Part2 Height selection
              Expanded(
                flex: 20,
                child: MyFixedContainer(
                  colorer: activeColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: txt,
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            '$height',
                            style: kTextStyle,
                          ),
                          Text(
                            'cm',
                            style: txt,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: const Color(0xffff898f),
                          thumbColor: const Color(0xffff9999),
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15),
                          overlayShape: const RoundSliderOverlayShape(
                            overlayRadius: 30,
                          ),
                          overlayColor: const Color(0x29ff838f),
                        ),
                        child: Slider.adaptive(
                          value: height.toDouble(),
                          min: 50,
                          max: 280,
                          inactiveColor: const Color(0xff8d8e98),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Part3 Weight & Age
              Expanded(
                flex: 20,
                child: Row(
                  children: [
                    //Part3a Weight
                    Expanded(
                        child: MyFixedContainer(
                      colorer: activeColor,
                      childCard: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: txt,
                            ),
                            Row(
                              textBaseline: TextBaseline.alphabetic,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              children: [
                                Text(
                                  "$weight",
                                  style: kTextStyle,
                                ),
                                Text(
                                  'kg',
                                  style: txt,
                                ),
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  color: Colors.cyanAccent,
                                  icon: const Icon(
                                    Icons.remove_circle_rounded,
                                    size: 60,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  color: Colors.cyanAccent,
                                  icon: const Icon(
                                    Icons.add_circle_rounded,
                                    size: 60,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
                    //Part3b Age
                    Expanded(
                        child: MyFixedContainer(
                      colorer: activeColor,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: txt,
                          ),
                          Text(
                            "$age",
                            style: kTextStyle,
                          ),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                color: Colors.cyanAccent,
                                icon: const Icon(
                                  Icons.remove_circle_rounded,
                                  size: 60,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                color: Colors.cyanAccent,
                                icon: const Icon(
                                  Icons.add_circle_rounded,
                                  size: 60,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                  ],
                ),
              ),
              // Part4 Calculation
              Expanded(
                flex: 7,
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  decoration: const BoxDecoration(
                    color: Color(0xff00838f),
                  ),
                  child: Center(
                    child: TextButton(
                        onPressed: () {
                          CalculatorBrain brainy=CalculatorBrain(height: height, weight: weight);
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ResultsPage(bmi:brainy.calculateBMI() ,inter:brainy.getInterpretation() ,res:brainy.getResult() ,);
                          },),);
                        },
                        child: const Text(
                          'Calculate',
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
      ),
    );
  }
}
