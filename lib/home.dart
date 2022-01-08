import 'package:flutter/material.dart';
import 'package:nani/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.background,
          elevation: 0.0,
        ),
        body: Container(
          color: AppColor.armyGreen,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 35, right: 35, bottom: 20),
                child: 
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColor.paleYellow,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5,),                  
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(right: 70,),
                            child:
                              Container(
                                height: 25,
                                width: 25,
                                color: Colors.black,
                              ), 
                          ),
                          Text('search for events'),
                        ],
                      ),
                    ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35, right: 35, bottom: 15),
                child: 
                Container(
                  height: 155,
                  decoration: BoxDecoration(
                    color: AppColor.paleYellow,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35, right: 35, bottom: 15),
                child: 
                Container(
                  height: 155,
                  decoration: BoxDecoration(
                    color: AppColor.paleYellow,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  child: Text('Nice')
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35, right: 35, bottom: 15),
                child: 
                Container(
                  height: 155,
                  decoration: BoxDecoration(
                    color: AppColor.paleYellow,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35, right: 35, bottom: 15),
                child: 
                Container(
                  height: 155,
                  decoration: BoxDecoration(
                    color: AppColor.paleYellow,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: 
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: 
          Container(
          width: 300.0,
          height: 810.0,
          decoration: BoxDecoration(
            color: AppColor.background,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0)),
          ),
          child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              margin: const EdgeInsets.all(30.0),
              height: 235,
              decoration: BoxDecoration(
                color: AppColor.paleYellow,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Container(
                margin: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                color: AppColor.palishYellow,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 10'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),)
      ),
    );
  }
}