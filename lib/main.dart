import 'package:domino_counter/consts/constants.dart';
import 'package:domino_counter/consts/images_consts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DominoApp());
}

class DominoApp extends StatefulWidget {
  const DominoApp({super.key});

  @override
  State<DominoApp> createState() => _DominoAppState();
}

class _DominoAppState extends State<DominoApp> {
  int pointsTeamA = 0;
  int pointsTeamB = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Row(
            children: [
              Image.asset(
                kLogoImage,
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  "Domino Counter",
                  style: TextStyle(color: kPrimaryColor),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 470,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 22),
                    child: Column(
                      children: [
                        Text(
                          "$pointsTeamA",
                          style: TextStyle(color: kPrimaryColor, fontSize: 75),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(
                              onPressed: () {
                                pointsTeamA += 1;
                                setState(() {});
                              },
                              child: Text("+1")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(
                              onPressed: () {
                                pointsTeamA += 2;
                                setState(() {});
                              },
                              child: Text("+2")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(
                              onPressed: () {
                                pointsTeamA += 3;
                                setState(() {});
                              },
                              child: Text("+3")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(
                              onPressed: () {
                                pointsTeamA += 4;
                                setState(() {});
                              },
                              child: Text("+4")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(
                              onPressed: () {
                                pointsTeamA += 5;
                                setState(() {});
                              },
                              child: Text("+5")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(
                              onPressed: () {
                                pointsTeamA += 10;
                                setState(() {});
                              },
                              child: Text("+10")),
                        )
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: kPrimaryColor,
                    thickness: 1,
                    indent: 64,
                    endIndent: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 22),
                    child: Column(
                      children: [
                        Text(
                          "$pointsTeamB",
                          style: TextStyle(color: kPrimaryColor, fontSize: 75),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(
                              onPressed: () {
                                pointsTeamB += 1;
                                setState(() {});
                              },
                              child: Text("+1")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(
                              onPressed: () {
                                pointsTeamB += 2;
                                setState(() {});
                              },
                              child: Text("+2")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(
                              onPressed: () {
                                pointsTeamB += 3;
                                setState(() {});
                              },
                              child: Text("+3")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(
                              onPressed: () {
                                pointsTeamB += 4;
                                setState(() {});
                              },
                              child: Text("+4")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(
                              onPressed: () {
                                pointsTeamB += 5;
                                setState(() {});
                              },
                              child: Text("+5")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(
                              onPressed: () {
                                pointsTeamB += 10;
                                setState(() {});
                              },
                              child: Text("+10")),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  pointsTeamA = 0;
                  pointsTeamB = 0;
                  setState(() {});
                },
                child: Text("Reset"))
          ],
        ),
      ),
    );
  }
}
