import 'package:flutter/material.dart';

import './pages/listViewPage.dart';

void main() {
  runApp(ListViewPage(
    items: List<String>.generate(15, (i) => "Item $i"),
      )
    );
}


