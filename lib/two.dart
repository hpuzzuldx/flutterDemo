import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutterdemo/OnePage.dart';
import 'package:flutterdemo/TabList.dart';
import 'package:flutterdemo/ThreePage.dart';

//void main() => runApp(new TwoClass());

class TwoClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RandomWordsState();
  }

}

class RandomWordsState extends State<TwoClass> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _saved = new Set<WordPair>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
/*        final tiles = _saved.map(
            (pair){
              return new ListTile(
                title: new Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
        );
        final divided = ListTile.divideTiles(tiles: tiles,
        context: context,).toList();

        return new Scaffold(
          appBar: new AppBar(
            title: new Text('Saved Suggestions'),

          ),
          body: _buildSuggestions(),
        );*/

      return new OnePage();

      //  return new ColorsDemo();
    }));
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return new Divider();
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }

          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    final alreadySave = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySave ? Icons.favorite : Icons.favorite_border,
        color: alreadySave ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySave) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }
}
