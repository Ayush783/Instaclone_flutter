import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/screens/ExploreScreen.dart';

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
                        child: buildContainer(1, context),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 2)),
                      Expanded(
                        child: buildContainer(2, context),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 2)),
                Expanded(
                  flex: 2,
                  child: buildContainer(3, context),
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
                        child: buildContainer(4, context),
                      ),
                      Padding(padding: EdgeInsets.only(right: 2)),
                      Expanded(
                        child: buildContainer(5, context),
                      ),
                      Padding(padding: EdgeInsets.only(right: 2)),
                      Expanded(
                        child: buildContainer(6, context),
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
                        child: buildContainer(1, context),
                      ),
                      Padding(padding: EdgeInsets.only(right: 2)),
                      Expanded(
                        child: buildContainer(2, context),
                      ),
                      Padding(padding: EdgeInsets.only(right: 2)),
                      Expanded(
                        child: buildContainer(3, context),
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
                  child: buildContainer(4, context),
                ),
                Padding(padding: EdgeInsets.only(right: 2)),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: buildContainer(5, context),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 2)),
                      Expanded(
                        child: buildContainer(6, context),
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

  GestureDetector buildContainer(int i, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ExploreScreen(),
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/image$i.jpg'),
          ),
        ),
      ),
    );
  }
}
