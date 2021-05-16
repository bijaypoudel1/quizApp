import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))),
      home: Scaffold(
          backgroundColor: Color(0xff877dc7),
          appBar: AppBar(
            title: Text('AppBar'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bharatpur, Chitwan',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'HakimChok',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'street 1',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Learning path',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    // height: 10.0,
                    ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Title text',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('Subtitle text'),
                        ),
                        Divider(color: Colors.grey),
                        ListTile(
                          leading: Icon(
                            Icons.play_circle_fill_rounded,
                            size: 30,
                          ),
                          title: Text(
                            'Title Text',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'subtitle Text',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.navigate_next,
                            color: Colors.blue,
                          ),
                        ),
                        Divider(color: Colors.grey),
                        ListTile(
                          leading: Icon(
                            Icons.file_copy,
                            size: 30,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          title: Text(
                            'Title Text',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          subtitle: Text(
                            'subtitle Text',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          trailing: Icon(
                            Icons.lock,
                            color: Colors.blue.withOpacity(0.5),
                          ),
                        ),
                        Divider(color: Colors.grey),
                        ListTile(
                          leading: Icon(Icons.file_copy,
                              size: 30, color: Colors.grey.withOpacity(0.5)),
                          title: Text(
                            'Title Text',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          subtitle: Text(
                            'subtitle Text',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          trailing: Icon(
                            Icons.lock,
                            color: Colors.blue.withOpacity(0.5),
                          ),
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.green,
                        ),
                        ListTile(
                          leading: Icon(Icons.file_copy,
                              size: 30, color: Colors.grey.withOpacity(0.5)),
                          title: Text(
                            'Title Text',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          subtitle: Text(
                            'subtitle Text',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          trailing: Icon(
                            Icons.lock,
                            color: Colors.blue.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
