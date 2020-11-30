import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'FadeInImage';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                child: Stack(
                  children: [
                    Center(child: CircularProgressIndicator()),
                    FadeInImage.memoryNetwork(
                      height: 300,
                      fadeInDuration: Duration(milliseconds: 500),
                      placeholder: kTransparentImage,
                      image:
                          'https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                child: Stack(
                  children: [
                    Center(child: Image.asset('assets/waiting.jpg')),
                    FadeInImage.memoryNetwork(
                      height: 300,
                      fadeInDuration: Duration(seconds: 5),
                      placeholder: kTransparentImage,
                      image:
                          'https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
