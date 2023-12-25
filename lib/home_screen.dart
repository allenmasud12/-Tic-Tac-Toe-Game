import 'package:flutter/material.dart';
import 'package:test_ui/enum/box_state.dart';
import 'package:test_ui/enum/game_state.dart';

import 'box_state_icon.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GameState gameState = GameState.notfinished;

  bool isTrun = false;

  //first
  BoxState a = BoxState.empty;
  BoxState b = BoxState.empty;
  BoxState c = BoxState.empty;

  //second
  BoxState d = BoxState.empty;
  BoxState e = BoxState.empty;
  BoxState f = BoxState.empty;

  // third
  BoxState g = BoxState.empty;
  BoxState h = BoxState.empty;
  BoxState i = BoxState.empty;

  void resetGame(){
    setState(() {
      a = BoxState.empty;
      b = BoxState.empty;
      c = BoxState.empty;


      d = BoxState.empty;
      e = BoxState.empty;
      f = BoxState.empty;


      g = BoxState.empty;
      h = BoxState.empty;
      i = BoxState.empty;

      gameState = GameState.notfinished;
    });
  }


  void gameScoreUpdate(){
  //  1
    if(a == b && b == c && a != BoxState.empty){
      if(a == BoxState.circle){
        gameState = GameState.circlewin;
      }else{
        gameState = GameState.crosswin;
      }
    }

    //  2
    if(d == e && e == f&& d != BoxState.empty){
      if(d == BoxState.circle){
        gameState = GameState.circlewin;
      }else{
        gameState = GameState.crosswin;
      }
    }

    //  3
    if(g == h && h == i && g != BoxState.empty){
      if(i == BoxState.circle){
        gameState = GameState.circlewin;
      }else{
        gameState = GameState.crosswin;
      }
    }

    //  4
    if(a == d && d == g && a != BoxState.empty){
      if(a == BoxState.circle){
        gameState = GameState.circlewin;
      }else{
        gameState = GameState.crosswin;
      }
    }
    //  5
    if(b == e && e == h && b != BoxState.empty){
      if(b == BoxState.circle){
        gameState = GameState.circlewin;
      }else{
        gameState = GameState.crosswin;
      }
    }
    //  6
    if(c == f && f == i && c != BoxState.empty){
      if(c == BoxState.circle){
        gameState = GameState.circlewin;
      }else{
        gameState = GameState.crosswin;
      }
    }

    //  7
    if(c == e && e == g && c != BoxState.empty){
      if(c == BoxState.circle){
        gameState = GameState.circlewin;
      }else{
        gameState = GameState.crosswin;
      }
    }

    //  8
    if(a == e && e == i && a != BoxState.empty){
      if(a == BoxState.circle){
        gameState = GameState.circlewin;
      }else{
        gameState = GameState.crosswin;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Tic Tac Toe'),
      //   centerTitle: true,
      // ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Expanded(
                  flex: 1,
                  child: Text(
                    'Trun : ${isTrun ? "Cross" : "Circle"}',
                    style: TextStyle(fontSize: 24.0),
                  )),
              Expanded(
                flex: 5,
                child: GridView.count(
                  mainAxisSpacing: 6.0,
                  crossAxisSpacing: 6.0,
                  crossAxisCount: 3,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (a == BoxState.empty) {
                            if (isTrun) {
                              a = BoxState.cross;
                            } else {
                              a = BoxState.circle;
                            }
                            isTrun = !isTrun;
                            gameScoreUpdate();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateToIcon(
                            boxState: a,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (b == BoxState.empty) {
                            if (isTrun) {
                              b = BoxState.cross;
                            } else {
                              b = BoxState.circle;
                            }
                            isTrun = !isTrun;
                            gameScoreUpdate();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateToIcon(
                            boxState: b,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (c == BoxState.empty) {
                            if (isTrun) {
                              c = BoxState.cross;
                            } else {
                              c = BoxState.circle;
                            }
                            isTrun = !isTrun;
                            gameScoreUpdate();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateToIcon(
                            boxState: c,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (d == BoxState.empty) {
                            if (isTrun) {
                              d = BoxState.cross;
                            } else {
                              d = BoxState.circle;
                            }
                            isTrun = !isTrun;
                            gameScoreUpdate();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateToIcon(
                            boxState: d,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (e == BoxState.empty) {
                            if (isTrun) {
                              e = BoxState.cross;
                            } else {
                              e = BoxState.circle;
                            }
                            isTrun = !isTrun;
                            gameScoreUpdate();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateToIcon(
                            boxState: e,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (f == BoxState.empty) {
                            if (isTrun) {
                              f = BoxState.cross;
                            } else {
                              f = BoxState.circle;
                            }
                            isTrun = !isTrun;
                            gameScoreUpdate();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateToIcon(
                            boxState: f,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (g == BoxState.empty) {
                            if (isTrun) {
                              g = BoxState.cross;
                            } else {
                              g = BoxState.circle;
                            }
                            isTrun = !isTrun;
                            gameScoreUpdate();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateToIcon(
                            boxState: g,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (h == BoxState.empty) {
                            if (isTrun) {
                              h = BoxState.cross;
                            } else {
                              h = BoxState.circle;
                            }
                            isTrun = !isTrun;
                            gameScoreUpdate();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateToIcon(
                            boxState: h,
                          )),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (i == BoxState.empty) {
                            if (isTrun) {
                              i = BoxState.cross;
                            } else {
                              i = BoxState.circle;
                            }
                            isTrun = !isTrun;
                            gameScoreUpdate();
                          }
                        });
                      },
                      child: Container(
                          color: Colors.blueAccent,
                          child: BoxStateToIcon(
                            boxState: i,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          gameState != GameState.notfinished?
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.green.withOpacity(0.7),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${gameState == GameState.circlewin ? "Circle" : "Cross"} win✌",
                    style: TextStyle(
                        fontSize: 44.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  ElevatedButton(onPressed: () => resetGame(), child: Icon(Icons.restart_alt))
                ],
              ),
            ),
          ): Container()
        ],
      ),
    );
  }
}
