import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    double height;
    double width;
    //get data from oage 2nd
    String data=ModalRoute.of(context).settings.arguments;
    //get image from page second
    return Column(
      children: <Widget>[

        // first container

        Container(
          height: (height/2)-100,
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    data,
                  )
              )
          ),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 40, 40, 0),
                      child: Badge(
                        badgeColor: Colors.lime,
                        badgeContent: Text(
                          "3",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        child: Icon(
                          Icons.notifications_off,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),


        //star button
        SmoothStarRating(
          allowHalfRating: false,
          starCount: 5,
          rating: 3,
          size: 20.0,
          isReadOnly: true,
          color: Colors.yellow,
          borderColor: Colors.grey,

        ),

        //description code

        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Text(
            "Metadata. A simple yet fully customizable ratingbar for flutter which also include a rating bar indicator, supporting any fraction of rating. A simple yet fully customizable rating bar for flutter which also include a rating bar indicator, supporting any fraction of rating.",
            style: TextStyle(
              color: Colors.grey,
            ),
            textAlign: TextAlign.justify,
          ),
        ),

        //last row (monday,friday)

        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: Offset(0,1),
                )
              ]
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Text(
                  "Sunday",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("4/7")
              ],
            ),
          ),
        ),

        //button code
        Container(
          width: width-50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: width-150,
                decoration: BoxDecoration(
                    color: Colors.lime[700],
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    )
                ),
                child: Align(
                  child: Text(
                    "Order Now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}

//watch full video at my youtube channel:

//Easycoding with Ammara