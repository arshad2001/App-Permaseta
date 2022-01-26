import 'package:flutter/material.dart';
import 'package:nani/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FilePage extends StatefulWidget {
  @override
  _FilePageState createState() => _FilePageState();
}

class _FilePageState extends State<FilePage> {
  int posisi = 0;
  String posisiNama = "Open\nRecruitment";
  void changeState(int posisi) {
    switch (posisi) {
      case 0:
        posisiNama = "Open\nRecruitment";
        break;
      case 1:
        posisiNama = "Eksternal";
        break;
      case 2:
        posisiNama = "Event PERMASETA";
        break;
      case 3:
        posisiNama = "About";
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.background,
        elevation: 0.0,
      ),
      body: Container(
        color: AppColor.background,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 35, right: 35, bottom: 20),
              child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColor.paleYellow,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.search,
                          size: 32.0,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 42.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search", border: InputBorder.none),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColor.background,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.arrow_back,
                          size: 32.0,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(
                            posisiNama,
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: InkWell(
                          child: Icon(
                            Icons.arrow_forward,
                            size: 32.0,
                          ),
                          onTap: () {
                            setState(() {
                              posisi++;
                              if (posisi > 3) {
                                posisi = 0;
                              }
                              changeState(posisi);
                            });
                          },
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35, right: 35, bottom: 10),
              child: Container(
                height: 155,
                decoration: BoxDecoration(
                  color: AppColor.paleYellow,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Assets/bukber.png"),
                                  fit: BoxFit.cover),
                              color: AppColor.palishYellow,
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: 13, right: 10, bottom: 10),
                          child: Text(
                            "Nama Proker",
                            textAlign: TextAlign.right,
                          ))
                    ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35, right: 35, bottom: 10),
              child: Container(
                height: 155,
                decoration: BoxDecoration(
                  color: AppColor.paleYellow,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColor.palishYellow,
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: 13, right: 10, bottom: 10),
                          child: Text(
                            "Nama Proker",
                            textAlign: TextAlign.right,
                          ))
                    ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35, right: 35, bottom: 10),
              child: Container(
                height: 155,
                decoration: BoxDecoration(
                  color: AppColor.paleYellow,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColor.palishYellow,
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: 13, right: 10, bottom: 10),
                          child: Text(
                            "Nama Proker",
                            textAlign: TextAlign.right,
                          ))
                    ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35, right: 35, bottom: 10),
              child: Container(
                height: 155,
                decoration: BoxDecoration(
                  color: AppColor.paleYellow,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColor.palishYellow,
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: 13, right: 10, bottom: 10),
                          child: Text(
                            "Nama Proker",
                            textAlign: TextAlign.right,
                          ))
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
