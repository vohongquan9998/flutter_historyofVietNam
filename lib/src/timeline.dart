import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_historyofvietnam/models/data.dart';
import 'package:flutter_historyofvietnam/src/timelineIndicator.dart';
import 'package:flutter_historyofvietnam/src/timelineitem.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLineHistory extends StatelessWidget {
  final List<History> history;
  TimeLineHistory({this.history});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          if (index.isOdd) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: const TimelineDivider(
                color: Colors.white70,
                thickness: 5,
                begin: 0.1,
                end: 0.9,
              ),
            );
          }
          final int itemIndex = index ~/ 2;
          final History item = history[itemIndex];
          final bool isLeftAilign = itemIndex.isEven;

          final child = TimeLineItem(
            title: item.title,
            description: item.description,
            isLeftAlign: isLeftAilign,
            year: item.year,
          );
          final isFirst = itemIndex == 0;
          final isLast = itemIndex == history.length - 1;
          double indicatorY;
          if (isFirst) {
            indicatorY = .2;
          } else if (isLast) {
            indicatorY = .8;
          } else {
            indicatorY = .5;
          }
          return TimelineTile(
            alignment: TimelineAlign.manual,
            endChild: isLeftAilign ? child : null,
            startChild: isLeftAilign ? null : child,
            lineXY: isLeftAilign ? .1 : 0.9,
            isFirst: isFirst,
            isLast: isLast,
            indicatorStyle: IndicatorStyle(
              width: MediaQuery.of(context).size.width * .2,
              height: MediaQuery.of(context).size.height * .1,
              indicatorXY: indicatorY,
              indicator: TimeLineIndicator(
                item: '${item.year}',
              ),
            ),
            beforeLineStyle: LineStyle(
              color: Colors.white,
              thickness: 5,
            ),
          );
        },
        childCount: max(0, history.length * 2 - 1),
      ),
    );
  }
}
