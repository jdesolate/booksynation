import 'package:booksynation/page/onboarding.dart';
import 'package:booksynation/page/registerpatient.dart';
import 'package:booksynation/weblogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            color: Color(0xFF3DDD6A).withOpacity(0.10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'images/Logo_BSN.svg',
                    height: height * 0.1,
                    width: width * 0.1,
                  ),
                  SizedBox(
                    width: width * 0.015,
                  ),
                  Text(
                    'BookSyNation',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Antic Didone',
                      fontWeight: FontWeight.bold,
                      fontSize: height * 0.041,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                height: height * 0.48,
                width: width * 0.85,
                alignment: Alignment.center,
                child: AspectRatio(
                  aspectRatio: 0.95,
                  child: Container(
                    padding: EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 5,
                          offset: Offset(3, 4), // changes position of shadow
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 5,
                          offset: Offset(3, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.015,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.person_outline_outlined,
                                  color: Colors.black,
                                ),
                                hintText: 'Username',
                              ),
                            ),
                            SizedBox(
                              height: height * 0.025,
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock_outlined,
                                  color: Colors.black,
                                ),
                                hintText: 'Password',
                              ),
                            ),
                            SizedBox(
                              height: height * 0.025,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OnBoard()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF26A98A),
                                fixedSize: Size(
                                  width * 0.45,
                                  height * 0.060,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                              ),
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                  fontSize: height * 0.018,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.025,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPatient()),
                                );
                              },
                              child: Text(
                                'Register Now',
                                style: TextStyle(
                                  color: Color(0xFF146955),
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * 0.017,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.025,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                  color: Color(0xFF146955),
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * 0.017,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => WebLogin()));
            },
            icon: Icon(Icons.web)),
      ),
    );
  }
}
