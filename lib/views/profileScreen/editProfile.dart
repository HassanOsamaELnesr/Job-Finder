import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobfinder_app/views/profileScreen/profileScreen.dart';

import '../../controllers/cubits/AuthCubit/States.dart';
import '../../controllers/cubits/AuthCubit/cubit.dart';
import '../../controllers/widgets/primaryButton.dart';

class update extends StatefulWidget {
  const update({super.key});

  @override
  State<update> createState() => _updateState();
}

class _updateState extends State<update> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthStates>(
        listener: ((context, state) {}),
    builder: (context, state) {
    var cubit = AuthCubit.get(context);
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 24,right: 24),
              child: Container(
                width: 327,
                height: 24,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const ProfileScreen()));
                      },
                      child: Icon(Icons.arrow_back,
                        size: 25,

                      ),
                    ),
                    SizedBox(width: 100,),
                    Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Center(
                        child: Text("Edite Profile",
                        style:
                          TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),),
                      ),
                    ),



                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 136,right: 135,top: 36),
                      child: Container(
                        width:104 ,
                        height:119 ,
                        child: CircleAvatar(
                          backgroundImage:AssetImage('assets/Images/character.png'),
                          child: Icon(Icons.camera_alt_outlined,size: 32,)

                        ),




                      ),
                    ),
                    TextButton(onPressed:
                        (){

                        }, child:  Column(
                      children: [
                        Text("Change  Photo"),
                      ],
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,right: 24,left: 24),
                      child: Container(
                        width:327 ,
                        height: 377,
                        child: Column(
                          children: [
                            Container(
                              width: 327,
                              height: 82,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:327,
                                    height: 21,
                                    child: Text("Name",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(156, 163, 175, 1),

                                      )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Container(
                                      width: 327,
                                      height: 55,
                                      child: TextFormField(
                                        controller: AuthCubit.nameController,
                                        decoration: InputDecoration(
                                          hintText: cubit.profName,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(5),
                                          )

                                        ),



                                      ),
                                    ),
                                  ),



                                ],
                              ),


                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Container(
                                width: 327,
                                height: 82,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width:327,
                                      height: 21,
                                      child: Text("Bio",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(156, 163, 175, 1),

                                          )
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6),
                                      child: Container(
                                        width: 327,
                                        height: 55,
                                        child: TextFormField(
                                          controller: AuthCubit.Bio,
                                          decoration: InputDecoration(
                                              hintText: cubit.profBio,
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5),
                                              )

                                          ),



                                        ),
                                      ),
                                    ),




                                  ],
                                ),


                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Container(
                                width: 327,
                                height: 82,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width:327,
                                      height: 21,
                                      child: Text("Address",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(156, 163, 175, 1),

                                          )
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6),
                                      child: Container(
                                        width: 327,
                                        height: 55,
                                        child: TextFormField(
                                          controller: AuthCubit.Address,
                                          decoration: InputDecoration(
                                              hintText: cubit.profAddress,
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5),
                                              )

                                          ),



                                        ),
                                      ),
                                    ),



                                  ],
                                ),


                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Container(
                                width: 327,
                                height: 82,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width:327,
                                      height: 21,
                                      child: Text("No.Handphone",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(156, 163, 175, 1),

                                          )
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 6),
                                      child: Container(
                                        width: 327,
                                        height: 55,
                                        child: TextFormField(
                                          controller: AuthCubit.Mobile,
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration(
                                            prefixIcon: Padding(
                                              padding: const EdgeInsets.only(left: 16,top: 19,bottom: 19),
                                              child: Image.asset('assets/Images/us.png',
                                                     width: 24,
                                                     height: 18,

                                                   ),
                                            ),
                                              prefix: Padding(
                                                padding: const EdgeInsets.only(top: 20),
                                                child: Icon(Icons.keyboard_arrow_down_outlined),
                                              ),

                                              hintText: cubit.profMobile,
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5),
                                              )

                                          ),


                                        ),
                                      ),
                                    ),




                                  ],
                                ),


                              ),
                            ),



                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: EdgeInsets.only(left: 24,right: 24,bottom: 40),
                      child: PrimaryButton(
                          title: 'Save',
                          onTap: () async {
                            try{
                              await cubit.changeName(
                                context,
                                name: AuthCubit.nameController.text,
                              );
                              await cubit.profBioAddMob(
                                  context,
                                add: AuthCubit.Address.text,
                                bio:  AuthCubit.Bio.text,
                                mob:  AuthCubit.Mobile.text,
                              );

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const ProfileScreen())
                              );
                            }catch (error) {
                              print('Error: $error');
                              print('Failed');
                            }

                          }
                      ),
                    ),


                  ],


                ),



              ],
            ),



          ],



        ),
      ),
      ),
    );
    });
  }
}
