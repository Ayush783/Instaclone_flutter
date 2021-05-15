import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    height: 20,
                  ),
                  Padding(padding: EdgeInsets.only(right: 16)),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.8),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 270,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 2)),
                      Expanded(
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 2)),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 2)),
          Container(
            height: 270,
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 2)),
                      Expanded(
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 2)),
                      Expanded(
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 2)),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 2)),
                      Expanded(
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 2)),
                      Expanded(
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 2)),
          Container(
            height: 270,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 2)),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 2)),
                      Expanded(
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
