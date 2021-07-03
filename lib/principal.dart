import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.video_library_outlined),
                    title: Container(height: 0.0)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.local_movies_outlined),
                    title: Container(height: 0.0)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), title: Container(height: 0.0)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.article_outlined),
                    title: Container(height: 0.0))
              ],
            ),
            body: Container(
              padding: EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text('Premieres',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ForRow(
                          image: 'movie1.PNG',
                          title: 'Big Hero 6',
                          year: '2014',
                          points: '4.5'),
                      SizedBox(width: 15),
                      ForRow(
                          image: 'movie2.PNG',
                          title: 'Frozen 2',
                          year: '2019',
                          points: '4.5'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text('In this week',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  ForColumn(
                      image: 'movie3.PNG',
                      title: 'How to Train Your Dragon',
                      duration: '110 min',
                      autor: 'Jacynthe Lubowitz  ●  2014',
                      points: '4.5'),
                  ForColumn(
                      image: 'movie4.PNG',
                      title: 'Sonic the Hedgehog',
                      duration: '110 min',
                      autor: 'Irene Amato  ●  2020',
                      points: '4.5'),
                  ForColumn(
                      image: 'movie5.PNG',
                      title: 'Abominable',
                      duration: '110 min',
                      autor: 'Tito Predovic  ●  2019',
                      points: '4.5'),
                  ForColumn(
                      image: 'movie6.PNG',
                      title: 'Birds of Prey',
                      duration: '110 min',
                      autor: 'Tito Predovic  ●  2019',
                      points: '4.5')
                ],
              ),
            )));
  }
}

class ForRow extends StatelessWidget {
  final String image;
  final String title;
  final String year;
  final String points;

  const ForRow(
      {@required this.image,
      @required this.title,
      @required this.year,
      @required this.points});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: 250,
              height: 110,
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/' + image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(children: [
                SizedBox(height: 80),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.yellow,
                    ),
                    Text(
                      '  ' + points,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                )
              ]),
            )
          ],
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          year,
          style: TextStyle(color: Colors.black45, fontSize: 12),
        ),
      ],
    );
  }
}

class ForColumn extends StatelessWidget {
  final String image;
  final String title;
  final String duration;
  final String autor;
  final String points;

  const ForColumn(
      {@required this.image,
      @required this.title,
      @required this.duration,
      @required this.autor,
      @required this.points});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        decoration:
            BoxDecoration(color: Colors.white.withOpacity(0.8), boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
          ),
        ]),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage('assets/' + image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Column(children: [
                    SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          size: 13,
                          color: Colors.yellow,
                        ),
                        Text(
                          '  ' + points,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    )
                  ]),
                ),
              ],
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  autor,
                  style: TextStyle(color: Colors.black45, fontSize: 12),
                ),
                SizedBox(height: 5),
                Text(
                  duration,
                  style: TextStyle(color: Colors.black45, fontSize: 12),
                ),
              ],
            )
          ],
        ));
  }
}
