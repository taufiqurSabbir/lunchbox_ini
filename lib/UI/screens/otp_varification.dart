import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'login_screen.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.pink,
          child: Column(
            children: [
              Container(
                height: 300,
                child: Image.asset(
                  'lib/image/otpicon.png',
                  width: 180,
                  height: 180,
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Colors.white,
                  ),
                  height: 500,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'We sent you a code',
                        style: TextStyle(
                            color: Colors.pink,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'You will need to have one password after set up OTP',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Phone Number',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                            ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: PinCodeTextField(
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                        inactiveFillColor: Colors.white,
                        inactiveColor: Colors.grey,
                        activeColor: Colors.white,
                        selectedFillColor: Colors.white,
                        selectedColor: Colors.pink,

                      ),
                      animationDuration: Duration(milliseconds: 300),
                      backgroundColor: Colors.white,
                      enableActiveFill: true,
                      cursorColor: Colors.pink,
                      validator: (String ? value){
                        if(value?.isEmpty ?? true){
                          return 'Enter OTP here';
                        }
                      },

                      onCompleted: (v) {
                        print("Completed");
                      },
                      onChanged: (value) {
                        print(value);
                        setState(() {

                        });
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      }, appContext: context,
                    ),
                  ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 350,
                        height: 48,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OTP()));
                            },
                            child: const Text('Sign Up')),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Alredy Have an Account?',
                              style: TextStyle(color: Colors.black87),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => loginscreen()));
                                },
                                child: Text(
                                  'Login Here',
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
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
