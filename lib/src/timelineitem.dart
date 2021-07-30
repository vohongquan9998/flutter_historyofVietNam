import 'package:flutter/material.dart';
import 'package:flutter_historyofvietnam/src/detail.dart';

class TimeLineItem extends StatelessWidget {
  final String title;
  final String description;
  final String year;
  final bool isLeftAlign;

  const TimeLineItem(
      {Key key, this.title, this.description, this.isLeftAlign, this.year})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isLeftAlign
          ? EdgeInsets.fromLTRB(10, 25, 32, 25)
          : EdgeInsets.fromLTRB(32, 25, 10, 25),
      child: GestureDetector(
        onLongPress: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailPage(
                    title: title,
                    description: description,
                    year: year,
                  )));
        },
        child: Column(
          crossAxisAlignment:
              isLeftAlign ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              textAlign: isLeftAlign ? TextAlign.right : TextAlign.left,
              style: TextStyle(
                fontSize: 22,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              description,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: isLeftAlign ? TextAlign.right : TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
