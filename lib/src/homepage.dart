import 'package:flutter/material.dart';
import 'package:flutter_historyofvietnam/models/data.dart';
import 'package:flutter_historyofvietnam/src/header.dart';
import 'package:flutter_historyofvietnam/src/timeline.dart';
import 'package:flutter_historyofvietnam/models/data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<History> history;

  @override
  void initState() {
    history = getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.red[400],
            Colors.yellow[300],
          ],
        )),
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              actions: [
                IconButton(
                    icon: Icon(Icons.info),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Container(
                                height:
                                    MediaQuery.of(context).size.height * .15,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Developer:Võ Hồng Quân'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Nguồn tham khảo'),
                                    for (var i = 0;
                                        i < listsource().length;
                                        i++)
                                      Text('${listsource()[i]}'),
                                  ],
                                ),
                              ),
                            );
                          });
                    })
              ],
            ),
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                children: [
                  HeaderWidget(),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CustomScrollView(
                        slivers: <Widget>[TimeLineHistory(history: history)],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
