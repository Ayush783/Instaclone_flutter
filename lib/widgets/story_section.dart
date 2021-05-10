import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/me.jpg'),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 4)),
              Text(
                "Your story",
                style: TextStyle(fontFamily: 'monty', fontSize: 12),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(right: 4)),
          StoryButton(image: 'person1', name: 'ElenaTT5'),
          StoryButton(image: 'person2', name: 'Caroline88'),
          StoryButton(image: 'person3', name: 'NamiKoko'),
          StoryButton(image: 'person4', name: 'Roronoazoro'),
          StoryButton(image: 'person5', name: 'Sanjichef'),
          StoryButton(image: 'person6', name: 'nicorobin'),
        ],
      ),
    );
  }
}

class StoryButton extends StatelessWidget {
  const StoryButton({
    Key key,
    this.image,
    this.name,
  }) : super(key: key);

  final String name, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xfff77737),
                  Color(0xffe1306c),
                  Color(0xff833ab4),
                ],
              ),
            ),
            padding: EdgeInsets.all(3),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/$image.jpg'),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 4)),
          Container(
            width: 70,
            child: Center(
              child: Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontFamily: 'monty', fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
