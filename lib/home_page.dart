import 'package:flutter/material.dart';
import 'package:flutter_turn_based_logic/game_button.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GameButton> buttonsList;

  @override 
    void initState() {
      super.initState();
      buttonsList = doInit();
    }

    List<GameButton> doInit(){
      var gameButtons = <GameButton>[
        new GameButton(id: 1),
        new GameButton(id: 2),
        new GameButton(id: 3),
        new GameButton(id: 4),
        new GameButton(id: 5),
        new GameButton(id: 6),
        new GameButton(id: 7),
        new GameButton(id: 8),
        new GameButton(id: 9),
      ];
      return gameButtons;
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Tic Tac Toe'),
      ),
      body: new GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: buttonsList.length,
        itemBuilder: (context,index)=> new SizedBox(
          width: 100.0,
          height: 100.0,
          child: new RaisedButton(
            padding: const EdgeInsets.all(8.0),
            onPressed: null,
            child: new Text(buttonsList[index].text),
          ),
        ),
      ));
  }
}