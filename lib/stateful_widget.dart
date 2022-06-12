import 'user_data.dart';
import "result_page.dart";
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender_widget.dart';
import 'my_container_widget.dart';
import 'const.dart';

class LifeContent extends StatefulWidget {
  LifeContent({Key? key}) : super(key: key);

  @override
  State<LifeContent> createState() => _LifeContentState();
}

class _LifeContentState extends State<LifeContent> {
  int kilo = 50;
  int boy = 170;
  String seciliCinsiyet = 'KADIN';
  double currentSigaraValue = 2.0;
  double currentSporValue = 2.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RotatedBox(
                            quarterTurns: -1,
                            child: Text('Boy', style: kMetinStyle)),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(boy.toString(), style: kNumberStyle),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  boy++;
                                });
                              },
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                size: 10,
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  boy--;
                                });
                              },
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                size: 10,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RotatedBox(
                            quarterTurns: -1,
                            child: Text('Kilo', style: kMetinStyle)),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(kilo.toString(), style: kNumberStyle),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  kilo++;
                                });
                              },
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                size: 10,
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  kilo--;
                                });
                              },
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                size: 10,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Günde kaç saat spor yapıyorsunuz?',
                    style: kMetinStyle,
                  ),
                  Text(
                    currentSporValue.round().toString(),
                    style: kNumberStyle,
                  ),
                  Slider(
                    value: currentSporValue,
                    min: 0.0,
                    max: 12.0,
                    label: currentSporValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        currentSporValue = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Günde kaç adet sıgara içiyorsunuz?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    currentSigaraValue.round().toString(),
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.lightBlue,
                    ),
                  ),
                  Slider(
                    value: currentSigaraValue,
                    min: 0.0,
                    max: 50.0,
                    label: currentSigaraValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        currentSigaraValue = value;
                      });
                      print(currentSigaraValue);
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        seciliCinsiyet = 'ERKEK';
                      });
                    },
                    color: seciliCinsiyet == 'ERKEK'
                        ? Colors.lightBlueAccent
                        : Colors.white,
                    child: Center(
                      child: Gender(
                        genderIcon: FontAwesomeIcons.mars,
                        genderText: 'ERKEK',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        seciliCinsiyet = 'KADIN';
                      });
                    },
                    color: seciliCinsiyet == 'KADIN'
                        ? Colors.lightBlueAccent
                        : Colors.white,
                    child: Center(
                      child: Gender(
                        genderIcon: FontAwesomeIcons.venus,
                        genderText: 'KADIN',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultPage(
                      UserData(
                        kilo: kilo,
                        boy: boy,
                        seciliCinsiyet: seciliCinsiyet,
                        currentSigaraValue: currentSigaraValue,
                        currentSporValue: currentSporValue,
                      ),
                    );
                  },
                ),
              );
            },
            child: Text('Hesapla', style: kMetinStyle),
          ),
        ],
      ),
    );
  }
}
