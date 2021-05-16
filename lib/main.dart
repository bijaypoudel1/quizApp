import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white, fontFamily: 'Ubuntu'),
          ),
        ),
        home: Scaffold(
          backgroundColor: Color(0xff877dc7),
          appBar: AppBar(
            title: Text('AppBar'),
            backgroundColor: Colors.teal,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bharatpur, Chitwan',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'JosefinSans',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Hakimchowk', style: TextStyle(fontSize: 16)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'street no,1',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      'Learning path',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                // width: 150,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: ListTile(
                              // leading: Text('hello'),
                              title: Text('Title Text'),
                              subtitle: Text('Subtitle Text'),
                              trailing: Icon(Icons.lock)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: ListTile(
                              // leading: Text('hello'),
                              title: Text('Title Text'),
                              subtitle: Text('Subtitle Text'),
                              trailing: Icon(Icons.lock)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: ListTile(
                              // leading: Text('hello'),
                              title: Text('Title Text'),
                              subtitle: Text('Subtitle Text'),
                              trailing: Icon(Icons.lock)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
