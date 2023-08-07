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
    return  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Categories',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
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
                    ),
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
                    ),
                    Card(

                      color: Color(0xFFE11A70),

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
                              color: Colors.white,
                            ),
                            Text('Chicken',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Popular',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                    SizedBox(height: 5,),
                    Text('Select Package for order',style: TextStyle(color: Colors.black54),),
                  ],
                ),
              ),


              //start of popular item section

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: SizedBox(
                        height: 250,width: 180,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          color: Colors.pink,
                          child: Column(
                            children: [
                              SizedBox(height: 15,),
                              Image.asset('lib/image/mac.png',width: 170,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Bengali cuisine',style: TextStyle(color: Colors.white,fontSize: 17),),
                              ),
                              SizedBox(height: 30,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('(150 gm)',style: TextStyle(color: Colors.white70),),
                                  Text('300 tk',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        height: 250,width: 180,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          color: Color(0xFF3425A6),
                          child: Column(
                             children: [
                              SizedBox(height: 15,),
                              Image.asset('lib/image/ckn.png',width: 120,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Bengali cuisine',style: TextStyle(color: Colors.white,fontSize: 17),),
                              ),
                              SizedBox(height: 30,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('(150 gm)',style: TextStyle(color: Colors.white70),),
                                  Text('300 tk',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        height: 250,width: 180,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          color: Color(0xFF155264),
                          child: Column(
                            children: [
                              SizedBox(height: 15,),
                              Image.asset('lib/image/1sts.png',width: 120,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Bengali cuisine',style: TextStyle(color: Colors.white,fontSize: 17),),
                              ),
                              SizedBox(height: 30,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('(150 gm)',style: TextStyle(color: Colors.white70),),
                                  Text('300 tk',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              //end of popular item section


              //start combo pack section


              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Combo Pack',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                    SizedBox(height: 5,),
                    Text('Select Package for order',style: TextStyle(color: Colors.black54),),
                  ],
                ),
              ),


              Card(
               child: Row(
                 children: [
                   SizedBox(
                     width: 100,
                     child: Card(
                       color: Color(0xFFA59ED7),
                       shape: ContinuousRectangleBorder(
                         borderRadius: BorderRadius.circular(20)
                       ),
                       child: Image.asset('lib/image/1sts.png',),
                     ),
                   ),
                   const Column(
                     children: [
                       Text('Wisconsin Cheese Curds'),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                          Row(
                            children: [
                              Icon(Icons.fastfood,color: Colors.pink,size: 15,),
                              SizedBox(width: 5,),
                              Text('data',style: TextStyle(color: Colors.black54),)
                            ],
                          ),
                          SizedBox(width: 10,),
                          Row(
                            children: [
                              Icon(Icons.fastfood,color: Colors.pink,size: 15,),
                              SizedBox(width: 5,),
                              Text('data',style: TextStyle(color: Colors.black54),)
                            ],
                          ),
                           SizedBox(width: 10,),
                          Row(
                            children: [
                              Icon(Icons.fastfood,color: Colors.pink,size: 15,),
                              SizedBox(width: 5,),
                              Text('data',style: TextStyle(color: Colors.black54),)
                            ],
                          ),

                         ],
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Text('(240 gm)'),
                           Text('TK 500',style: TextStyle(color: Colors.pink),)
                         ],
                       )
                     ],
                   ),
                 ],
               )
              )




            ],
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
