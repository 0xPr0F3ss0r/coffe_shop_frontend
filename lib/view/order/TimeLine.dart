import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLine extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final String status;
  final String time;
  final Color beforecolor;
  final Color aftercolor;
  final bool before;
  final bool after;
  final Widget image;
  const TimeLine({
    super.key,
    this.beforecolor = Colors.grey,
    this.aftercolor = Colors.grey,
    required this.isFirst,
    required this.isLast,
    required this.status,

    required this.before,
    required this.after,
    required this.image,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(left: 10, bottom: 30, child: image),
        SizedBox(
          height: 90,
          child: TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.2,
            isFirst: isFirst,
            isLast: isLast,
            beforeLineStyle: LineStyle(
              color: before ? beforecolor : Colors.grey,
            ),
            afterLineStyle: LineStyle(color: after ? aftercolor : Colors.grey),
            indicatorStyle: IndicatorStyle(
              drawGap: true,
              padding: EdgeInsets.only(right: 10),
              color: Color(0xFFCB8A58),
              width: 15,
            ),
            endChild: Stack(
              children: [
                Container(
                  width: 261,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFF585858)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              status,
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF212220),
                                fontSize: 20,
                              ),
                            ),
                            Text(isLast ? "......." : "20-12-2022"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 15,
                  bottom: 2,
                  child: Text(time, style: TextStyle(fontSize: 12)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
