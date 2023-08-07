import 'package:flutter/material.dart';

import '../widget/profile_top_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const profile_top_banner(),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.pink,
                            child: Text(
                              '22',
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                          Text(
                            'Mon',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Text(
                              '23',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                          ),
                          Text(
                            'Tue',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Text(
                              '24',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                          ),
                          Text(
                            'Wed',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Text(
                              '25',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                          ),
                          Text(
                            'Thu',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Text(
                              '26',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                          ),
                          Text(
                            'Fri',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Text(
                              '27',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                          ),
                          Text(
                            'Sat',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Text(
                              '28',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                          ),
                          Text(
                            'Sun',
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => breakfast()));
                  },
                  child: Text('breakfasr')),
              DefaultTabController(
                length: 4,
                child: TabBar(
                  controller: _tabcontroller,
                  labelColor: Colors.pink,
                  unselectedLabelColor: Colors.black54,
                  indicatorColor: Colors.pink,
                  tabs: [
                    Tab(
                      text: 'Breakfast',
                    ),
                    Tab(
                      text: 'Lunch',
                    ),
                    Tab(
                      text: 'Dinner',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: TabBarView(
                  controller: _tabcontroller,
                  children: [
                    breakfast(),
                    lunch(),
                    dinner(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class breakfast extends StatefulWidget {
  const breakfast({Key? key}) : super(key: key);

  @override
  State<breakfast> createState() => _breakfastState();
}

class _breakfastState extends State<breakfast> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Categories'),
              Row(
                children: [
                  Card(

                    color: Color(0xD5E3E1E1),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
                      child: Row(
                        children: [
                          Icon(
                            Icons.dinner_dining,
                            color: Colors.pink,
                          ),
                          Text('Chicken',),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class lunch extends StatefulWidget {
  const lunch({Key? key}) : super(key: key);

  @override
  State<lunch> createState() => _lunchState();
}

class _lunchState extends State<lunch> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class dinner extends StatefulWidget {
  const dinner({Key? key}) : super(key: key);

  @override
  State<dinner> createState() => _dinnerState();
}

class _dinnerState extends State<dinner> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
