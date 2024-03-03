import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobfinder_app/views/profileScreen/portfolio.dart';


import '../../controllers/cubits/AuthCubit/States.dart';
import '../../controllers/cubits/AuthCubit/cubit.dart';
import '../../controllers/widgets/bottomNavigationBar.dart';
import 'Notification.dart';
import 'editProfile.dart';
import 'language.dart';
import 'login and security.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
    builder: (context, state) {
    var cubit = AuthCubit.get(context);
    return  Scaffold(
      body:SafeArea(
          child:SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                        width: 420,
                        height: 195,
                        decoration:const  BoxDecoration(
                          color: Color.fromRGBO(214, 228, 225, 1),

                        ),
                          child:Padding(
                            padding: const EdgeInsets.only(left: 24,right: 24,top: 16),
                            child: Container(
                              width: 327,
                              height: 24,
                              child:  Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const BottomNavigationBarJobFinder()));
                                    },
                                    child: Icon(Icons.arrow_back,
                                      size: 24,
                                    ),
                                  ),
                                  SizedBox(width: 111.5,),
                                 Text("Profile",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),

                                  ),
                                  SizedBox(width: 111.5,),
                                  Icon(Icons.logout,
                                    color: Colors.red,
                                    size: 24,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],

                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 250),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Center(child: Text(cubit.profName.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )),
                          Text(cubit.profBio.toString()),
                          SizedBox(height: 12,),
                          Container(
                            width:327 ,
                            height: 88,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Container(

                                  width:91,
                                  height:52 ,
                                  child: Column(
                                    children: [
                                      Center(child: Text("Applied")),
                                      SizedBox(height: 9,),
                                      Text("46",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,

                                      ),),

                                    ],

                                  ),
                                ),
                                VerticalDivider(
                                  color: Color.fromRGBO(209, 213, 219, 1),
                                  thickness: 1,
                                ),
                                Container(
                                  width:91,
                                  height:52 ,
                                  child: Column(
                                    children: [
                                      Text("Reviwed "),
                                      SizedBox(height: 9,),
                                      Text("23",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),)
                                    ],
                                  ),

                                ),
                                VerticalDivider(
                                  color: Color.fromRGBO(209, 213, 219, 1),
                                  thickness: 1,
                                ),
                                Container(
                                  width:91,
                                  height:52 ,
                                  child: Column(
                                    children: [
                                      Text("Contacted "),
                                      SizedBox(height: 9,),
                                      Text("16",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),)
                                    ],
                                  ),

                                ),






                              ],
                            ),


                          ),
                          Container(
                            width: 375,
                            height: 149,
                            color: Colors.white,
                            child:  Column(
                              children: [
                                Container(
                                  width: 375,
                                  height: 37,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text("About"),
                                     SizedBox(width: 14,),
                                     TextButton(onPressed:(){

                                     }, child:Text("Edit") ),
                                   ],
                                 ),

                                ),
                                SizedBox(height: 12,),
                                Text("I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of."),
                              ],
                            ),



                          ),
                          SizedBox(height: 36,),
                          Container(
                            width: 500,
                            height: 36,
                            color: Colors.grey[200],
                            child: const Padding(
                              padding: EdgeInsets.only(left: 32,top: 10),
                              child: Text(
                                "General",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    fontFamily: "SF Pro Display"
                                ),
                              ),
                            ),
                          ),

                        ],

                      ),
                    ),
                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 620),
                     child: Center(
                       child: Padding(
                         padding: const EdgeInsets.only(right: 45),
                         child: Container(
                           width: 370,
                           height: 356,
                           color: Colors.white,
                           child:  Column(
                             children: [
                               ListTile(
                                 leading: CircleAvatar(
                                   backgroundImage: AssetImage("assets/Images/profile.png"),
                                 ),
                                 title: Text("Edit Profile"),
                                 onTap: (){
                                   Navigator.push(
                                       context,
                                       MaterialPageRoute(
                                           builder: (context) =>
                                           const update()));
                                 },
                                 trailing: Padding(
                                   padding: EdgeInsets.only(left: 70),
                                   child: Icon(Icons.arrow_right_alt_sharp,
                                   size: 25,),
                                 ),



                               ),
                               ListTile(
                                 leading: CircleAvatar(
                                   backgroundImage: AssetImage("assets/Images/fileHeart.png"),
                                 ),
                                 onTap: (){
                                   Navigator.push(
                                       context,
                                       MaterialPageRoute(
                                           builder: (context) =>
                                           const Portfolio()));
                                 },
                                 title: Text("Portfolio"),
                                 trailing: Padding(
                                   padding: EdgeInsets.only(left: 70),
                                   child: Icon(Icons.arrow_right_alt_sharp,
                                     size: 25,),
                                 ),


                               ),
                               ListTile(
                                 leading: CircleAvatar(
                                   backgroundImage: AssetImage("assets/Images/world.png"),
                                 ),
                                 onTap: (){
                                   Navigator.push(
                                       context,
                                       MaterialPageRoute(
                                           builder: (context) =>
                                           const Language()));
                                 },
                                 title: Text("Langauge"),
                                 trailing: Padding(
                                   padding: EdgeInsets.only(left: 70),
                                   child: Icon(Icons.arrow_right_alt_sharp,
                                     size: 25,),
                                 ),


                               ),
                               ListTile(
                                 leading: CircleAvatar(
                                   backgroundImage: AssetImage("assets/Images/notification.png"),
                                 ),
                                 onTap: (){
                                   Navigator.push(
                                       context,
                                       MaterialPageRoute(
                                           builder: (context) =>
                                           const notification()));
                                 },
                                 title: Text("Notification"),
                                 trailing: Padding(
                                   padding: EdgeInsets.only(left: 70),
                                   child: Icon(Icons.arrow_right_alt_sharp,
                                     size: 25,),
                                 ),


                               ),
                               ListTile(
                                 leading: CircleAvatar(
                                   backgroundImage: AssetImage("assets/Images/lock.png"),
                                 ),
                                 onTap: (){
                                   Navigator.push(
                                       context,
                                       MaterialPageRoute(
                                           builder: (context) =>
                                           const loginandsecurity()));
                                 },
                                 title: Text("Login and security"),
                                 trailing: Padding(
                                   padding: EdgeInsets.only(left: 70),
                                   child: Icon(Icons.arrow_right_alt_sharp,
                                     size: 25,),
                                 ),


                               ),






                             ],




                           ),

                         ),

                       ),

                     ),
                   ),
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.only(top: 920),
                      child: Container(
                        width: 500,
                        height: 36,
                        color: Colors.grey[200],
                        child: const Padding(
                          padding: EdgeInsets.only(left: 32,top: 10),
                          child: Text(
                            "Others",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                fontFamily: "SF Pro Display"
                            ),
                          ),
                        ),
                      ),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(top: 960),
                     child: Center(
                       child: Padding(
                         padding: const EdgeInsets.only(right: 25),
                         child: Container(
                           width: 327,
                           height: 250,
                           color: Colors.white,
                           child: const Column(
                             children: [
                               ListTile(
                                 leading: Text("Accesibility",
                                   style: TextStyle(
                                     fontSize: 15
                                   ),


                                 ),
                                 trailing: Padding(
                                   padding: EdgeInsets.only(left: 70),
                                   child: Icon(Icons.arrow_right_alt_sharp,
                                     size: 25,),
                                 ),
                               ),
                               ListTile(
                                 leading: Text("Help Center",
                                   style: TextStyle(
                                       fontSize: 15
                                   ),


                                 ),
                                 trailing: Padding(
                                   padding: EdgeInsets.only(left: 40),
                                   child: Icon(Icons.arrow_right_alt_sharp,
                                     size: 25,),
                                 ),
                               ),
                               ListTile(
                                 leading: Text("Terms & Conditions",
                                   style: TextStyle(
                                       fontSize: 15
                                   ),


                                 ),
                                 trailing: Padding(
                                   padding: EdgeInsets.only(left: 70),
                                   child: Icon(Icons.arrow_right_alt_sharp,
                                     size: 25,),
                                 ),
                               ),
                               ListTile(
                                 leading: Text("Privacy Policy",
                                   style: TextStyle(
                                       fontSize: 15
                                   ),


                                 ),
                                 trailing: Padding(
                                   padding: EdgeInsets.only(left: 70),
                                   child: Icon(Icons.arrow_right_alt_sharp,
                                     size: 25,),
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),








                    Padding(
                      padding: const EdgeInsets.all(150.0),
                      child: Align(
                          alignment: Alignment.center,
                        child: SizedBox(
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/Images/character.png'),
                             radius: 50,
                             backgroundColor: Colors.black,
                          ),
                        ),
                      ),
                    ),








                  ],




                ),

              ],

            ),
            ),
          )
      );
    });
  }
}
