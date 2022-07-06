import 'package:flutter/material.dart';
import 'package:flutterapp/components/home/stats.dart';

void main() => runApp(MaterialApp(
    home: Home(),
));

class Home extends StatelessWidget {
	@override
  	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: Colors.blueGrey[400],
			appBar: AppBar(
				title: Text(
					'Lock-Pandemic',
					style: TextStyle(color: Colors.grey[800], fontSize: 25),
				),
				centerTitle: true,
				backgroundColor: Colors.blueGrey[300],
				elevation: 0.0,
			),
			body: Column(
				children: <Widget>[
					Container(
						padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
						color: Colors.blueGrey[300],
						child: Row(children: <Widget>[
							StatWdg(Stat('Infacted', 0)),
							StatWdg(Stat('Recovered', 0)),
						],),
					),
					Container(
						padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
						color: Colors.blueGrey[300],
						child: Row(children: <Widget>[
							StatWdg(Stat('Contacted', 0)),
							StatWdg(Stat('Symptoms', 0)),
						],),
					),
					
				],
			),
			floatingActionButton: FloatingActionButton(
				onPressed: () {},
				backgroundColor: Colors.pinkAccent,
				child: Icon(Icons.location_on) ,
			),
		);
  	}
}