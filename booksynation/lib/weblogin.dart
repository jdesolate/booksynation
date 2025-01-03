import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class WebLogin extends StatefulWidget {
  const WebLogin({Key? key}) : super(key: key);

  @override
  _WebLoginState createState() => _WebLoginState();
}

class _WebLoginState extends State<WebLogin> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Color(0xFF3DDD6A).withOpacity(0.10),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: width * 0.03,
              child: Image.asset(
                'images/imagecp.png',
              ),
              // child: SvgPicture.asset(
              //   'images/webimage.svg',
              // ),
            ),
            Positioned(
                bottom: -15,
                right: width * 0.05,
                child: Transform.rotate(
                  angle: -math.pi / 5.5,
                  child: SvgPicture.asset(
                    'images/Logo_BSN.svg',
                    color: Colors.black.withOpacity(0.1),
                    height: height * 0.30,
                    width: width * 0.30,
                  ),
                )),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: height * 0.65,
                width: width * 0.75,
                alignment: Alignment.center,
                child: AspectRatio(
                  aspectRatio: 0.7,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 5,
                          offset: Offset(3, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: height * 0.05, horizontal: width * 0.035),
                    child: Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Column(
                              children: [
                                SvgPicture.asset(
                                  'images/Logo_BSN.svg',
                                  height: height * 0.1,
                                  width: width * 0.1,
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  'BookSyNation',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Antic Didone',
                                    fontWeight: FontWeight.bold,
                                    fontSize: height * 0.02,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Text(
                                  'Log in to BookSyNation',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.bold,
                                    fontSize: height * 0.024,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                Text(
                                  'Enter your email and password below',
                                  style: TextStyle(
                                    color: Color(0xFF9FA2B4),
                                    fontFamily: 'Mulish',
                                    fontSize: height * 0.014,
                                    fontWeight: FontWeight.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.015,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.bold,
                                    fontSize: height * 0.015,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                    ),
                                    hintText: 'Email Address',
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.025,
                                ),
                                Text(
                                  'PASSWORD',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.bold,
                                    fontSize: height * 0.012,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.005,
                                ),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(8.0)),
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                    ),
                                    hintText: 'Password',
                                    suffixIcon:
                                        Icon(Icons.visibility_off_outlined),
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF26A98A),
                                fixedSize: Size(
                                  width * 0.30,
                                  height * 0.05,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                  fontSize: height * 0.016,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Don\'t have an account? ',
                                  style: TextStyle(
                                    color: Color(0xFF9FA2B4),
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.normal,
                                    fontSize: height * 0.014,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Color(0xFF146955),
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.bold,
                                    fontSize: height * 0.014,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
