import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_design/widgets/responsive_widget.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List _isHovering = [false, false, false, false];



  @override
  Widget build(BuildContext context) {
    var screenSize=MediaQuery.of(context).size;
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)?AppBar(
        backgroundColor: Colors.blueGrey.shade900.withOpacity(0.5),
        elevation: 0,
        title: Text(
          'EXPLORE',
          style: TextStyle(
            color: Colors.blueGrey.shade100,
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            letterSpacing: 3,
          ),
        ),
      ): PreferredSize(
        preferredSize: Size(screenSize.width,500),
        child: Container(
          color: Colors.blueGrey.withOpacity(0.5),
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          height: 50,
          child: Row(
            children: [
              Text("EXPLORE",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
              Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap:(){},
                          onHover: (value) {
                            setState(() {
                              _isHovering[0] = value;
                            });
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Discover",style: TextStyle(
                                  color: _isHovering[0]
                                      ? Colors.brown
                                      : Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
                              SizedBox(height: 5,),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[0],
                                child: Container(
                                  height: 2,
                                  width: 30,
                                  color: Colors.white,
                                ),
                              )


                            ],
                          )),
                      SizedBox(width: 10,),
                      InkWell(
                          onTap:(){},
                          onHover: (value) {
                            setState(() {
                              _isHovering[1] = value;
                            });
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Contact us",style: TextStyle(color: _isHovering[1]
                                  ? Colors.deepPurpleAccent
                                  : Colors.white,fontSize: 16,fontWeight: FontWeight.bold)),
                              SizedBox(height: 5,),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: _isHovering[1],
                                child: Container(
                                  height: 2,
                                  width: 30,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )),
                    ],
                  )),
              InkWell(
                  onTap:(){},
                  onHover: (value) {
                    setState(() {
                      _isHovering[2] = value;
                    });
                  }  ,
                  child: Text("SignUp",style: TextStyle(color: _isHovering[2]
                      ? Colors.black
                      : Colors.white,fontSize: 16,fontWeight: FontWeight.bold))),
              SizedBox(width: 10,),
              InkWell(
                  onTap:(){},
                  onHover: (value) {
                    setState(() {
                      _isHovering[3] = value;
                    });
                  },
                  child: Text("Login",style: TextStyle(color: _isHovering[3]
                      ? Colors.black
                      : Colors.white,fontSize: 16,fontWeight: FontWeight.bold))),

            ],
          ),
        ), ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: screenSize.height * 0.45,
                  width: screenSize.width,
                  child: Image.asset(
                    'assets/images/camp_appbar.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                 // heightFactor: 1,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: screenSize.height * 0.40,
                      left: screenSize.width / 5,
                      right: screenSize.width / 5,),
                    child: Card(
                      color: Colors.grey,
                      child: Text(";lkjygtfrdesaasadfghjkl"),
                    ),
                  ),
                ),

                Column(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Featured",style: GoogleFonts.montserrat(
                          fontSize: 40,
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.w500,
                        ),),
                        const Text('Unique wildlife tours & destinations',)

                      ],
                    ),
                  ],
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}