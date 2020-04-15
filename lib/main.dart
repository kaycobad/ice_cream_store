import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
    ),
  );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Discover',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'All are homemade items',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Icon(
                        Icons.search,
                        size: 35,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      BigContainer(
                        imagePath: 'images/1.jpg',
                        price: '\$14.00',
                        title: 'Strawberry ice cream',
                      ),
                      BigContainer(
                        imagePath: 'images/2.jpg',
                        price: '\$18.00',
                        title: 'Colorful ice cream',
                      ),
                      BigContainer(
                        imagePath: 'images/3.jpg',
                        price: '\$12.00',
                        title: 'Oreo ice cream',
                      ),
                      BigContainer(
                        imagePath: 'images/4.jpg',
                        price: '\$24.00',
                        title: 'Green ice cream',
                      ),
                      BigContainer(
                        imagePath: 'images/10.jpg',
                        price: '\$10.00',
                        title: 'ice cream',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Recently added',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(255, 100, 150, 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Text(
                          'Most Popular',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    children: <Widget>[
                      SmallContainer(
                        imageLink: 'images/5.jpg',
                        title: 'Strawberry',
                        subTitle: 'Flavour',
                      ),
                      SmallContainer(
                        imageLink: 'images/6.jpg',
                        title: 'Chocolate',
                        subTitle: 'Mix Flavour',
                      ),
                      SmallContainer(
                        imageLink: 'images/7.jpg',
                        title: 'Oreo',
                        subTitle: 'Flavour',
                      ),
                      SmallContainer(
                        imageLink: 'images/8.jpg',
                        title: 'White',
                        subTitle: 'Creamy',
                      ),
                      SmallContainer(
                        imageLink: 'images/9.jpg',
                        title: 'Strawberry',
                        subTitle: 'Flavour',
                      ),
                      SmallContainer(
                        imageLink: 'images/10.jpg',
                        title: 'Raspberry',
                        subTitle: 'Flavour',
                      ),
                      SmallContainer(
                        imageLink: 'images/8.jpg',
                        title: 'White',
                        subTitle: 'Creamy',
                      ),
                      SmallContainer(
                        imageLink: 'images/9.jpg',
                        title: 'Strawberry',
                        subTitle: 'Flavour',
                      ),
                      SmallContainer(
                        imageLink: 'images/10.jpg',
                        title: 'Raspberry',
                        subTitle: 'Flavour',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SmallContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageLink;
  SmallContainer(
      {@required this.title,
      @required this.subTitle,
      @required this.imageLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imageLink),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(0),
            ],
            begin: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              subTitle,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BigContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  BigContainer(
      {@required this.imagePath, @required this.title, @required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AspectRatio(
        aspectRatio: 1.25 / 2,
        child: Container(
          margin: EdgeInsets.only(
            right: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(.6),
                  Colors.black.withOpacity(0),
                ],
                begin: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  price,
                  style: TextStyle(
                    color: Color.fromRGBO(255, 100, 150, 1),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
