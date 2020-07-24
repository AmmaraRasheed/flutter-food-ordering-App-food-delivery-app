import 'package:flutter/material.dart';
import 'package:food_app_new/FoodApp/ThirdPage.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // store images and title in list
  List<String> images;
  List<String> title;
  @override
  Widget build(BuildContext context) {
    double height;
    double width;
    return Column(
    //listiew design
      children: <Widget>[
        ListView.builder(
          itemCount: images.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                String passImage=images[index];
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>ThirdPage(),
                        settings: RouteSettings(
                            arguments: passImage
                        )
                    )
                );
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: width,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        images[index]
                                    ),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    topLeft: Radius.circular(30),
                                  )
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Container(
                              width: width-170,
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      title[index],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Tired of having the same old home-cooked food every day.",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "121",
                                          style: TextStyle(
                                            color: Colors.grey[900],
                                            fontSize: 11,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Icon(
                                          Icons.watch_later,
                                          size: 15,
                                          color: Colors.yellow,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.verified_user,
                                          size: 15,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.warning,
                                          size: 15,
                                          color: Colors.yellow,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            child: Icon(Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),

        //Button Design
        Container(
          height: 50,
          width: width-100,
          decoration: BoxDecoration(
              color: Colors.lime[700],
              borderRadius: BorderRadius.all(Radius.circular(50),)
          ),
          child: Align(
            child: Text("Order Now",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
//watch full video at my youtube channel:

//Easycoding with Ammara