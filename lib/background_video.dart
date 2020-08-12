import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class BackGroundVideo extends StatefulWidget {
  @override
  _BackGroundVideoState createState() => _BackGroundVideoState();
}

class _BackGroundVideoState extends State<BackGroundVideo> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/background.mp4')
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

    @override
    Widget build(BuildContext context) {
     return //MaterialApp(
//        home: Scaffold(
//          body: Stack(
//            children: <Widget>[
              SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _controller.value.size?.width ?? 0,
                    height: _controller.value.size?.height ?? 0,
                    child: VideoPlayer(_controller),
                  ),
                ),
              );
//              ),
//            ],
//          ),
//        ),
//      );
    }



//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Video Demo',
//      home: Scaffold(
//        body: Center(
//          child: _controller.value.initialized
//              ? AspectRatio(
//            aspectRatio: _controller.value.aspectRatio,
//            child: VideoPlayer(_controller),
//          )
//              : Container(),
//        ),
//        floatingActionButton: FloatingActionButton(
//          onPressed: () {
//            setState(() {
//              _controller.value.isPlaying
//                  ? _controller.pause()
//                  : _controller.play();
//            });
//          },
//          child: Icon(
//            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//          ),
//        ),
//      ),
//    );
//  }
//
 @override
void dispose() {
super.dispose();
_controller.dispose();
  }
}