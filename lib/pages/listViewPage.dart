import 'package:flutter/material.dart';
import 'package:wallpapper_app_pana/interfaces/wallpaper.dart';

import '../logic/httpRequest.dart';

class ListViewPage extends StatelessWidget {
  final List<String> items;

// PLACEHOLDER

  ListViewPage({Key key, @required this.items}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final title = 'Wallpapers';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: Text(title,textAlign: TextAlign.center),
          elevation: 10,
          //
        ),
        body: FutureBuilder(
          future: fetchPost(),
          builder:(BuildContext context, AsyncSnapshot<List<Wallpaper>> snapshot) {
          if (snapshot.hasData) {

            // If fetchPost returns data
            if (snapshot.data != null) {
              return buildListView(snapshot.data);
            }
          // When neither of above shows Loading Indicator
          } else {
            return new CircularProgressIndicator();
            }
          })
      ),
    );
  }


  ListView buildListView(List<Wallpaper> wallpapers) {
    return ListView.builder(
            itemCount: wallpapers.length,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
            itemBuilder: (BuildContext context, int index) {
              return Image.network(wallpapers[index].urls.small, fit:BoxFit.fitWidth);
            }
    );
  }
}
