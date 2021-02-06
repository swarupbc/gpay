import 'package:flutter/material.dart';
import 'package:gpay/views/components/circleAvatar.dart';

class MyHomePage extends StatelessWidget {
  final String id = '/MyHomePage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.qr_code_scanner_outlined,
                            size: 30.0,
                          ),
                          Container(
                            width: 35.0,
                            height: 35.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/swarup.jpeg'),
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        // decoration: BoxDecoration(
                        //   image: DecorationImage(
                        //     fit: BoxFit.cover,
                        //     image: AssetImage('assets/images/homebg.png'),
                        //   ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 70.0,
                              child: Image.asset(
                                'assets/images/gplogo.png',
                              ),
                            ),
                            Icon(
                              Icons.play_circle_fill_rounded,
                              size: 60.0,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.withOpacity(0.2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: Text(
                          'People',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          CirclePeople(
                            peopleImage: AssetImage('assets/images/elon.png'),
                            peopleName: 'Elon',
                          ),
                          CirclePeople(
                            peopleImage: AssetImage('assets/images/mark.jpeg'),
                            peopleName: 'Mark',
                          ),
                          CirclePeople(
                            peopleImage: AssetImage('assets/images/sundar.jpg'),
                            peopleName: 'Sundaram',
                          ),
                          CirclePeople(
                            peopleImage:
                                AssetImage('assets/images/mukesh.jpeg'),
                            peopleName: 'Mukesh',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CirclePeople(
                            peopleImage: AssetImage('assets/images/donald.jpg'),
                            peopleName: 'Donald',
                          ),
                          CirclePeople(
                            peopleImage: AssetImage('assets/images/ratan.jpg'),
                            peopleName: 'Ratan',
                          ),
                          CirclePeople(
                            peopleImage:
                                AssetImage('assets/images/narendra.jpg'),
                            peopleName: 'Narendra',
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 15.0,
                                  vertical: 10.0,
                                ),
                                height: 60.0,
                                width: 60.0,
                                child: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  size: 50.0,
                                  color: Colors.grey,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  // image: DecorationImage(
                                  //   fit: BoxFit.cover,
                                  //   image: peopleImage,
                                  // ),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              Text('More'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        child: Row(
                          children: [
                            Text(
                              'Businesses and bills',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Container(
                              width: 100.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.shopping_bag,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    'Explore',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          CirclePeople(
                            peopleImage: AssetImage('assets/images/jio.png'),
                            peopleName: 'Jio Pre..',
                          ),
                          CirclePeople(
                            peopleImage: AssetImage('assets/images/oyo.png'),
                            peopleName: 'OYO Rooms',
                          ),
                          CirclePeople(
                            peopleImage: AssetImage('assets/images/vi.png'),
                            peopleName: 'VI Post..',
                          ),
                          CirclePeople(
                            peopleImage:
                                AssetImage('assets/images/flipkart.png'),
                            peopleName: 'Flipkart..',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: Row(
              children: [
                Icon(Icons.add),
                Text('New payment'),
              ],
            ),
          )),
    );
  }
}
