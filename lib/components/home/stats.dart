import 'package:flutter/material.dart';

class Stat  {
	String name;
	int count;
	Stat(String name, int count) {
		this.name = name;
		this.count = count;
	}
}

class StatWdg extends StatelessWidget {
	Stat stat;
	StatWdg(stat) {
		this.stat = stat;
	}

    @override
    Widget build(BuildContext context) {
		return 	Expanded (
			flex: 1,
			child: Column(children: <Widget>[
				Text('${stat.name}', style: TextStyle(fontSize: 20, color: Colors.grey[900]),),
				SizedBox(height: 20.0),
				Text('${stat.count}', style: TextStyle(fontSize: 20 ,),),
			],),
		);
    }
}
