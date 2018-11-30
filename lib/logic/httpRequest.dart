import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:wallpapper_app_pana/interfaces/wallpaper.dart';



Future<List<Wallpaper>> fetchPost() async {
  final response =
      await http.get('https://api.unsplash.com/photos?client_id=adbf8bc65420b0825f209884bdc22f1477539a825210f32179d55aff613fbefc');


  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON
    return wallpaperFromJson(response.body);
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}
