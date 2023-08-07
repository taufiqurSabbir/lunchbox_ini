import 'package:flutter/material.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
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
                  'lib/image/LOGO.png',
                  width: 230,
                  height: 230,
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
                      const Text('Login',style: TextStyle(color: Colors.pink,fontSize: 25,fontWeight: FontWeight.w500),),
                      const SizedBox(height: 10,),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('We\'ll take care about your credential',style: TextStyle(color: Colors.black54),),
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
                                      borderSide: BorderSide(width: 1.5,color: Colors.black54),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  hintText: 'Enter phone number'
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Password',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(width: 1.5,color: Colors.black54),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  hintText: 'Enter Password'
                              ),
                              obscureText: true,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20,),

                      SizedBox(width: 350,height: 48,
                        child:  ElevatedButton(
                            onPressed: (){

                            }, child: const Text('Sign Up')),),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Forget Password?',style: TextStyle(color: Colors.black87),),

                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>loginscreen()));
                          }, child: Text('Click Here',style: TextStyle(color: Colors.black),))
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
