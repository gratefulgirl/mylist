import 'package:flutter/material.dart';
import '../repository/beer_repository.dart';
import '../models/beer.dart';
import '../widgets/beer_tile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Beer> _beers = <Beer>[];

  @override
  void initState() {
    super.initState();
    listenForBeers();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('Top Beers'),
    ),
    body: ListView.builder(
      itemCount: _beers.length,
      itemBuilder: (context, index) => BeerTile(_beers[index]),
  switch (snapshot.connectionState){
  case ConnectionState.none:
  case  ConnectionState.waiting:
  case ConnectionState.active:
  return Align(
  alignment:Alignment.center,
  child: CircularProgressIndicator()
  );
  case ConnectionState.done:
  if(snapshot.hasError){
  return Text('Error:${snapshot.error}');
  } else{
    ),
  );

  void listenForBeers() async {
    final Stream<Beer> stream = await getBeers();
    stream.listen((Beer beer) =>
        setState(() =>  _beers.add(beer))
    );
  }
}