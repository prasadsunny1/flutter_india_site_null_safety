import 'package:flutter/material.dart';

import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:ui' as ui;


  String viewID = "your-view-id";
class Youtube extends StatefulWidget {
  @override
  _YoutubeState createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        viewID,
            (int id) => html.IFrameElement()
          ..width = MediaQuery.of(context).size.width.toString()
          ..height = MediaQuery.of(context).size.height.toString()
          ..src = 'https://www.youtube.com/embed/IyFZznAk69U'
          ..style.border = 'none');

    return SizedBox(
      height: 500,
      child: HtmlElementView(
        viewType: viewID,
      ),
    );
  }
}
  