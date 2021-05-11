import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key key,
    this.dp,
    this.image,
    this.name,
  }) : super(key: key);

  final String dp, name, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/$dp.jpg'),
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 16)),
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/$image.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
            child: Row(
              children: [
                IconButton(
                    constraints: BoxConstraints(minHeight: 0, minWidth: 0),
                    splashRadius: 18,
                    icon: SvgPicture.asset(
                      'assets/icons/heart_outlined.svg',
                      height: 24,
                    ),
                    onPressed: () {}),
                IconButton(
                    constraints: BoxConstraints(minHeight: 0, minWidth: 0),
                    splashRadius: 18,
                    icon: SvgPicture.asset('assets/icons/comment.svg',
                        height: 24),
                    onPressed: () {}),
                IconButton(
                    constraints: BoxConstraints(minHeight: 0, minWidth: 0),
                    splashRadius: 18,
                    icon: SvgPicture.asset('assets/icons/dm.svg', height: 24),
                    onPressed: () {}),
                Spacer(),
                IconButton(
                    constraints: BoxConstraints(minHeight: 0, minWidth: 0),
                    splashRadius: 18,
                    icon: SvgPicture.asset(
                      'assets/icons/save.svg',
                      height: 24,
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
              child: RichText(
                text: TextSpan(
                    text: name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text:
                            " Life is like a box of chocolates; sometimes you just dig out the good center parts and leave all the undesirable rest to waste.",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'sen',
                        ),
                      )
                    ]),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6),
              child: Text(
                'View all 21 comments',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
