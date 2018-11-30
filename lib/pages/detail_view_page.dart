import 'package:flutter/material.dart';
import 'package:wallpapper_app_pana/interfaces/wallpaper.dart';
import './listViewPage.dart';

class DetailViewPage extends StatelessWidget {
  final Wallpaper wallpaperDetails;

  DetailViewPage(this.wallpaperDetails);

// overriding StatelessWidget's build method to build our desired Widgets-Tree
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(wallpaperDetails.description)),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _renderBody(context, wallpaperDetails)));
  }

  //Repeating thing
  Widget _sections(String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      child: Text(title, textAlign: TextAlign.center),
    );
  }
}

List<Widget> _renderBody(BuildContext context, Wallpaper wallpaperDetails){
  var result = List<Widget>();
  result.add(Image.network(wallpaperDetails[index].urls.small, fit:BoxFit.fitWidth);
  result.addAll(_renderLikes(context, wallpaperDetails));
  return result;
}

// this renders a list of facts which we put into the children with _renderFahocts(location)
List<Widget> _renderLikes(BuildContext context, Wallpaper wallpaperDetails) {
  var result = List<Widget>();
  for (int i = 0; i < location.facts.length; i++) {
    result.add(_sectionTitle(location.facts[i].title));
    result.add(_sectionText(location.facts[i].text));
  }
  return result;
}

Widget _sectionText(String text) {
  return Container(
    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    child: Text (text,
      textAlign: TextAlign.left,
      style:  TextStyle(
        fontSize: 15.0,
        color: Colors.black,
  )));
}

Widget _sectionTitle(String text) {
  return Container(
    padding: EdgeInsets.fromLTRB(20, 20, 20, 15),
    child: Text (text,
      textAlign: TextAlign.left,
      style:  TextStyle(
        fontSize: 25.0,
        color: Colors.black,
  )));
}

Widget _bannerImage(String url, double height) {
  // Container is one of the ways to display an Image. With Container we can stretch it and constrain its height
  return Container(
    // BoxcContraint.tightFor or loose defines the size of the Picture
    constraints:  BoxConstraints.tightFor(height: height),
    child:Image.network(url, fit: BoxFit.fitWidth,)
  );
}
