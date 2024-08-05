import 'package:flutter/material.dart';
import 'package:play_store/data.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int i = 0;
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:   Color.fromARGB(48, 158, 158, 158),
        selectedItemColor: Colors.blue,

        unselectedItemColor: Colors.grey,
        enableFeedback: false,
        type: BottomNavigationBarType.fixed,
       
          onTap: (value) {
             x = value;
            setState(() {
              x = value;
            });
          },
          currentIndex: x,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.games), label: "Games" ,backgroundColor: Colors.blue),
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps"),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "Books"),
          ]),
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(right: 10, left: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(48, 158, 158, 158)),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(

                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          hintText: "Search",
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.white24,
                            fontSize: 20,
                          ),
                          suffixIcon: Icon(
                            Icons.mic,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 30,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage("img/p1.jpg"),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 40,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: type.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          i = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: i == index
                                        ? Colors.blue
                                        : Colors.grey))),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              type[index],
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended for you ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: rec.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "${rec[index]["img"]}",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            Text(
                              "${rec[index]["name"]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            Row(
                              children: [
                                Text(
                                  "${rec[index]["rate"]}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 10,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Sponsord ' ",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Suggested for you ",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index1) {
                    return Container(
                      padding: EdgeInsets.only(left: 20),
                      margin: EdgeInsets.only(top: 20),
                      width: 400,
                      child: Row(
                        children: [
                          Container(
                            width: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: List.generate(
                                  3,
                                  (index) => Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 10),
                                            width:60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                      "${index1 == 0 ? sug["frist"]!["img"][index] : sug["second"]!["img"][index]}",
                                                    ),
                                                    fit: BoxFit.cover),
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${index1 == 0 ? sug["frist"]!["name"][index] : sug["second"]!["name"][index]}",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                      "${index1 == 0 ? sug["frist"]!["rate"][index] : sug["second"]!["rate"][index]}",
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.white,
                                                    size: 10,
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      )),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
