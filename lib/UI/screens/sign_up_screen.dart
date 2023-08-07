import 'package:flutter/material.dart';
import 'package:lunchbox/UI/screens/login_screen.dart';
import 'package:lunchbox/UI/screens/otp_varification.dart';

class sign_up extends StatefulWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.pink,
            child: Column(
              children: [
                Image.asset(
                  'lib/image/signup.png',
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: RichText(
                          text: const TextSpan(
                              text: 'People who ',
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'love to eat',
                                    style: TextStyle(color: Colors.orange)),
                                TextSpan(text: ' are always the'),
                                TextSpan(text: ' best people',style: TextStyle(color: Colors.orange)),
                              ],

                              style: TextStyle(fontSize: 25, letterSpacing: .5,)),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(

                  width: double.infinity,

                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                    color: Colors.white,
                  ),

                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      const Text('Sign Up',style: TextStyle(color: Colors.pink,fontSize: 25,fontWeight: FontWeight.w500),),
                      const SizedBox(height: 10,),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('You will need to have one password after set up OTP',style: TextStyle(color: Colors.black54),),
                      ),



                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Phone Number',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1.5,color: Colors.pink),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                hintText: 'Enter phone number'
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20,),

                      SizedBox(width: 350,height: 48,
                        child:  ElevatedButton(
                            onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP()));
                            }, child: const Text('Sign Up')),),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Alredy Have an Account?',style: TextStyle(color: Colors.black87),),

                         TextButton(onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>loginscreen()));
                         }, child: Text('Login Here',style: TextStyle(color: Colors.black),))
                        ],
                      ),



                      const SizedBox(height: 15,),


                    ],
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
