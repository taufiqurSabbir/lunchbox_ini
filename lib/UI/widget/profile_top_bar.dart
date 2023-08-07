import 'package:flutter/material.dart';
class profile_top_banner extends StatelessWidget {
  const profile_top_banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.pink,
          height: 65,

          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Taufiqur Sabbir',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      'Gulshan-2,Dhaka',
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 22,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/premium-photo/positive-man-with-beard-mustache-clenching-fists-joy-while-standing-isolated-yellow_171337-68415.jpg'),
                    radius: 20,
                  ),
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}