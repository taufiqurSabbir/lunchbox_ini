import 'package:flutter/material.dart';
import 'package:lunchbox/UI/screens/login_screen.dart';
import 'package:lunchbox/UI/screens/sign_up_screen.dart';

class entryscreen extends StatefulWidget {
  const entryscreen({Key? key}) : super(key: key);

  @override
  State<entryscreen> createState() => _entryscreenState();
}

class _entryscreenState extends State<entryscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.pink,
          child: Column(
            children: [
              Image.asset(
                'lib/image/2.png',
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Center(
                  child: Column(
                    children: [
                      RichText(
                        text: const TextSpan(
                            text: 'Real cooking is more about ',
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'follow your heart',
                                  style: TextStyle(color: Colors.orange)),
                              TextSpan(text: ' than following recipes..!'),
                            ],
                            style: TextStyle(fontSize: 27, letterSpacing: .5)),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Real cooking is more about follow your heart than following recipes..!',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(

                 width: double.infinity,

                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                    color: Colors.white,
                  ),
                  height: 500,
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      SizedBox(width: 350,height: 48,
                      child:  ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>loginscreen()));
                          }, child: Text('login')),),

                      SizedBox(height: 15,),

                      SizedBox(width: 350,height: 48,
                        child:  ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(color: Colors.pink,width: 1.5)
                          ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>sign_up()));
                            }, child: Text('Sign Up',style: TextStyle(color: Colors.black),)),),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
