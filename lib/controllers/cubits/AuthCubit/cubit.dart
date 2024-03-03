// ignore_for_file: non_constant_identifier_names
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobfinder_app/controllers/constants/constants.dart';
import 'package:jobfinder_app/controllers/cubits/AuthCubit/States.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitState());
  static AuthCubit get(context) => BlocProvider.of(context);

  static TextEditingController password = TextEditingController();
  static TextEditingController newPassword = TextEditingController();
  static TextEditingController confirmPassword = TextEditingController();
  static TextEditingController OldPassword = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController nameController = TextEditingController();
  static TextEditingController Bio = TextEditingController();
  static TextEditingController Address = TextEditingController();
  static TextEditingController Mobile = TextEditingController();
  static TextEditingController Postion = TextEditingController();
  static TextEditingController TypeOfWork = TextEditingController();
  static TextEditingController CompName = TextEditingController();
  static TextEditingController Location = TextEditingController();
  static TextEditingController StartDate = TextEditingController();
  static TextEditingController FullName = TextEditingController();
  static TextEditingController Email = TextEditingController();
  static TextEditingController Number = TextEditingController();
  static TextEditingController Search = TextEditingController();

  //--------------- Create Profile Methods-------------//
String? profName;
String? profBio;
String? profAddress;
String? profMobile;
String? profEmail;
String? userID;
String? compname;
String? lastmsg;
String? userMsg;
String? compMsg;
String? test;
int? expId;
String? token;
int? userId;
bool? status;
int? portfolioID;
int? job1FavId;
int? job2FavId;
int? job3FavId;
List <dynamic> UserMsgList=[];
List <dynamic> SearchedJobs=[];
List <dynamic> Portfolios=[];
List <dynamic> FavJobs=[];
List <String> CompMsgList=[];
List<dynamic> suggestedJobs = [];
List <dynamic> allJobs=[];
Map<String,dynamic> fav = {};
List<dynamic> data2=[];

///////////////////////////////////////////////////////
  //------------------SignUp------------------------//
  Future<void> CreateUser(
    context, {
    String? name,
    String? email,
    String? password,
  }) async {
    try {
      Response response = await Dio()
          .post("${JobFinderConstants.BaseUrl}/auth/register/", data: {
        "password": password,
        "email": email,
        "name": name,
      });

      // Check if the response contains a token
      if (response.data != null && response.data['token'] != null) {
        String token = response.data['token'];
        bool status = response.data['status'];
        int userId = response.data['data']['id'];

        String nameInResponse = response.data['data']['name'];
        profName=nameInResponse;
        profEmail=response.data['data']['email'];
        userID=response.data['data']['id'].toString();

        // Do something with the token, e.g., store it or use it for authentication
        print('Token: $token');
        print('name: $nameInResponse');

        SharedPreferences userSharedPreference =
            await SharedPreferences.getInstance();
        userSharedPreference.setInt('userId', userId);
        userSharedPreference.setString('token', token);
        userSharedPreference.setBool('status', status);
      } else {
        // Handle the case where the token is not present in the response
        print('Token not found in the response');
      }

      emit(RegisterSuccessfulState());
    } catch (error) {
      // Handle errors
      print(error);
    }
  }


  ///////////////////////////////////////////////////////
  //------------------Login------------------------//
  Future<void> loginUser(
    context, {
    String? email,
    String? password,
  }) async {
    try {
      Response response =
          await Dio().post("${JobFinderConstants.BaseUrl}/auth/login", data: {
        "email": email,
        "password": password,
      });

      String token = response.data['token'];
      bool status = response.data['status'];
      int userId = response.data['user']['id'];
      userID=userId.toString();

      SharedPreferences userSharedPreference =
          await SharedPreferences.getInstance();

      userSharedPreference.setInt('userId', userId);
      userSharedPreference.setString('token', token);
      userSharedPreference.setBool('status', status);

      print(response.data['status']);
      print(response.data['user']['email']);
      profEmail=response.data['user']['email'];
      profName=response.data['user']['name'];
      emit(LoginSuccessfulState());
    } catch (error) {
      // Handle errors
      print(error);
      emit(LoginFailedState());
    }
  }


  ///////////////////////////////////////////////////////
  //------------------getOTP------------------------//
  Future<void> getOTP(
      context,
      ) async {

    try {
      Response response = await Dio().get(
        "${JobFinderConstants.BaseUrl}/auth/otp",
      );

      String data = response.data['data'];
      bool status = response.data['status'];

      print(data);

      if(status){
        print("OTP received");
      }
      else{
        print("Fail to receive OTP");
      }

      emit(GettingNotificationSuccess());
    } catch (error) {
      // Handle errors

      print(error);
      emit(GettingNotificationFailed());
    }
  }

///////////////////////////////////////////////////////
  //------------------savingUserDataInMobile------------------------//
  void GettingUserData() async {
    SharedPreferences userData = await SharedPreferences.getInstance();
    token = userData.getString('token');
    status = userData.getBool('status');
    userId = userData.getInt('userId');
    emit(GettingUserDataSuccessfully());
  }


///////////////////////////////////////////////////////
  //------------------GetNotification------------------------//
  Future<void> gettingNotification(
    context,
  ) async {

    try {
      Response response = await Dio().get(
        "${JobFinderConstants.BaseUrl}/notification/1",
      );

      String comp_name = response.data['data']['comp_name'];
      bool status = response.data['status'];

      print(comp_name);
      print(status);

      emit(GettingNotificationSuccess());
    } catch (error) {
      // Handle errors

      print(error);
      emit(GettingNotificationFailed());
    }
  }


  ///////////////////////////////////////////////////////
  //------------------getSuggestedJobs------------------------//
  Future<void> suggestJob(
      context,
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().get(
          "${JobFinderConstants.BaseUrl}/jobs/sugest/2",
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        Map<String,dynamic> data = response.data['data'];
        suggestedJobs=data.values.toList();
        bool status = response.data['status'];

         print(suggestedJobs);
         print(status);



        emit(GettingSugesstedJobSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingSugesstedJobFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingSugesstedJobFail());
    }
  }

  ///////////////////////////////////////////////////////
  //------------------ChangeProfilePassword------------------------//
  Future<void> changePassword(
      context,{
        String? pass
      }
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().post(
          "${JobFinderConstants.BaseUrl}/auth/user/update",data: {
          "password": pass
        },
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        bool status = response.data['status'];
        print(status);
        if(status){
          print("password changed");
        }else{
          print("password Not changed");
        }



        emit(GettingSugesstedJobSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingSugesstedJobFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingSugesstedJobFail());
    }
  }

  ///////////////////////////////////////////////////////
  //------------------ChangeProfileName------------------------//
  Future<void> changeName(
      context,{
      String? name
      }
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().post(
          "${JobFinderConstants.BaseUrl}/auth/user/update",data: {
            "name": name
        },
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        bool status = response.data['status'];
        String updatedName=response.data['data']['name'];
        profName=updatedName;
        print(status);
        if(status){
          print("changed");
        }else{
          print("Not changed");
        }



        emit(GettingSugesstedJobSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingSugesstedJobFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingSugesstedJobFail());
    }
  }

  ///////////////////////////////////////////////////////
  //------------------UpdateProfileBio&Address&Mobile------------------------//
  Future<void> profBioAddMob(
      context,{
        String? bio,
        String? add,
        String? mob
      }
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().put(
          "${JobFinderConstants.BaseUrl}/user/profile/edit?bio=$bio&address=$add&mobile=$mob",
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        bool status = response.data['status'];
        profBio=response.data['data']['bio'];
        profAddress=response.data['data']['address'];
        profMobile=response.data['data']['mobile'];
        print(status);
        if(status){
          print("updated");
        }else{
          print("Not updated");
        }



        emit(GettingSugesstedJobSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingSugesstedJobFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingSugesstedJobFail());
    }
  }


  ///////////////////////////////////////////////////////
  //------------------UplodaFile------------------------//
  Future<void> addPortfolio(
      context,{
        PlatformFile? cv,
        PlatformFile? img
      }
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().post(
          "${JobFinderConstants.BaseUrl}/user/profile/portofolios",data: {
          "cv_file": File(cv!.path!),
          "image": File(img!.path!),
        },
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        bool status = response.data['status'];
        portfolioID=response.data['data']['id'];
        print(status);
        if(status){
          print("uploaded");
        }else{
          print("Not uploaded");
        }



        emit(GettingSugesstedJobSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingSugesstedJobFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingSugesstedJobFail());
    }
  }


  ///////////////////////////////////////////////////////
  //------------------getPortfolios------------------------//
  Future<void> getPortfolios(
      context,
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().get(
          "${JobFinderConstants.BaseUrl}/user/profile/portofolios",
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        List<dynamic> data = response.data['data'];
        bool status = response.data['status'];
        Portfolios.add(data);
        if(status){
          print("data received");
        }
        else{
          print("fail");
        }

        emit(GettingAllJobsSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingAllJobsFailed());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingTokenFailed());
    }
  }



  ///////////////////////////////////////////////////////
  //------------------deletePortfolio------------------------//
  Future<void> deletePortfolio(
      context,
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().delete(
          "${JobFinderConstants.BaseUrl}/user/profile/portofolios/$portfolioID",
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        bool status = response.data['status'];
        print(status);
        if(status){
          print("deleted");
        }else{
          print("Not deleted");
        }



        emit(GettingSugesstedJobSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingSugesstedJobFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingSugesstedJobFail());
    }
  }


  ///////////////////////////////////////////////////////
  //------------------addFavorite------------------------//
  Future<void> addFavorites(
      context,{
        String? jobId
       }
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');

      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().post(
          "${JobFinderConstants.BaseUrl}/favorites",data: {
          "job_id":jobId
        },
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        bool status = response.data['status'];
        print(status);
        if(status){
          print("added to Favorites");
        }else{
          print("fail to add");
        }



        emit(GettingSugesstedJobSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingSugesstedJobFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingSugesstedJobFail());
    }
  }

///////////////////////////////////////////////////////
  //------------------getAllFavorites------------------------//
  Future<void> getAllFavorites(
      context,
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().get(
          "${JobFinderConstants.BaseUrl}/favorites",
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );
      //  print( response.data['data'][1]['jobs']);
        Map<String,dynamic> data = {};
        data2=response.data['data'];
        bool status = response.data['status'];
      // FavJobs.add(data2);
        print(data2[1]['jobs']['id']);

        for(int i=0;i<response.data['data'].length;i++){
          data=response.data['data'][i]['jobs'];
          fav.addAll(data);
         // print(fav);
          if(response.data['data'][i]['job_id']==4)
            {
              job1FavId=response.data['data'][response.data['data'].length-1]['id'];
              print(job1FavId);
            }
          else if(response.data['data'][i]['job_id']==3){
            job2FavId=response.data['data'][i]['id'];
            print(job2FavId);
          }
          else if(response.data['data'][i]['job_id']==2){
            job3FavId=response.data['data'][i]['id'];
            print(job3FavId);
          }
        }
        if(status){
          print("data received");
        }
        else{
          print("fail");
        }

        emit(GettingAllJobsSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingAllJobsFailed());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingTokenFailed());
    }
  }


  ///////////////////////////////////////////////////////
  //------------------deleteFavorite------------------------//
  Future<void> deleteFavorite(
      context, {
        String? jobid
      }
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().delete(
          "${JobFinderConstants.BaseUrl}/favorites/$jobid",
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );
        //FavJobs.remove(jobid);
        bool status = response.data['status'];
        print(status);
        if(status){
          print("deleted");
        }else{
          print("Not deleted");
        }



        emit(GettingSugesstedJobSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingSugesstedJobFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingSugesstedJobFail());
    }
  }


  ///////////////////////////////////////////////////////
  //------------------UpdateProfileLanguage------------------------//
  Future<void> profLang(
      context,{
        String? lang,

      }
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().put(
          "${JobFinderConstants.BaseUrl}/user/profile/edit?language=$lang",
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        bool status = response.data['status'];
        print(status);
        if(status){
          print("updated");
        }else{
          print("Not updated");
        }



        emit(GettingSugesstedJobSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingSugesstedJobFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingSugesstedJobFail());
    }
  }

  ///////////////////////////////////////////////////////
  //------------------addExperience------------------------//
  Future<void> addExperince(
      context,{
        String? pos,
        String? typeOfWork,
        String? comName,
        String? Location,
        String? startYear
      }
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');

      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().post(
          "${JobFinderConstants.BaseUrl}/experince",data: {
          "user_id": userID.toString(),
          "postion": pos,
          "type_work": typeOfWork,
          "comp_name": comName,
          "location": Location,
          "start": startYear,
        },
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        bool status = response.data['status'];
        expId= response.data['data']['id'];
        print(status);
        if(status){
          print("added");
        }else{
          print("Not added");
        }



        emit(GettingSugesstedJobSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingSugesstedJobFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingSugesstedJobFail());
    }
  }


  ///////////////////////////////////////////////////////
  //------------------search------------------------//
  Future<void> search(
      context,{
        String? txt
  }
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().post(
          "${JobFinderConstants.BaseUrl}/jobs/search",
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        List<dynamic> data = response.data['data'];
        bool status = response.data['status'];
        SearchedJobs.add(data);
        print(response.data['data'][0]['name']);
        print(SearchedJobs[0][1]['name']);
        if(status){
          print("added");
        }else{
          print("Not added");
        }



        emit(GettingSugesstedJobSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingSugesstedJobFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingSugesstedJobFail());
    }
  }


///////////////////////////////////////////////////////
  //------------------applyJob------------------------//
  Future<void> applyJob(
      context,{
        PlatformFile? cv,
        String? name,
        String? email,
        String? mobile,
        String? workType,
        String? jobsId
      }
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');

      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().post(
          "${JobFinderConstants.BaseUrl}/apply",data: {
          "cv_file": cv,
          "name": name,
          "email": email,
          "mobile": mobile,
          "work_type": workType,
          "other_file": cv,
          "jobs_id": jobsId,
          "user_id": userID.toString(),
        },
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        bool status = response.data['status'];
        print(status);
        if(status){
          print("added");
        }else{
          print("Not added");
        }



        emit(GettingSugesstedJobSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingSugesstedJobFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingSugesstedJobFail());
    }
  }


  ///////////////////////////////////////////////////////
  //------------------getApplyJobs------------------------//
  Future<void> getApplyJobs(
      context,
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().get(
          "${JobFinderConstants.BaseUrl}/apply/1",
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        //List<dynamic> data = response.data['data'];
        bool status = response.data['status'];
        //allJobs.add(data);

        if(status){
          print("data received");
        }
        else{
          print("fail");
        }

        emit(GettingAllJobsSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingAllJobsFailed());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingTokenFailed());
    }
  }


  ///////////////////////////////////////////////////////
  //------------------getAllJobs------------------------//
  Future<void> getAllJobs(
      context,
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().get(
          "${JobFinderConstants.BaseUrl}/jobs",
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        List<dynamic> data = response.data['data'];
        bool status = response.data['status'];
        allJobs.add(data);

        if(status){
          print("data received");
        }
        else{
          print("fail");
        }

        emit(GettingAllJobsSuccessfully());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingAllJobsFailed());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingTokenFailed());
    }
  }


  ///////////////////////////////////////////////////////
  //------------------getChatNotification------------------------//
  Future<void> getChatNotification(
      context,
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().get(
          "${JobFinderConstants.BaseUrl}/notification/1",
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        bool status = response.data['status'];
        compname= response.data['data']['comp_name'];
        lastmsg=response.data['data']['last_massage'];
        if(status){
          print("success");
        }
        else {
          print ("failed");
        }
        emit(GettingNotificationSuccess());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(GettingNotificationFailed());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingTokenFailed());
    }
  }


///////////////////////////////////////////////////////
  //------------------userSendMsg------------------------//
  Future<void> userSendMsg(
      context,{
        String? Msg,
      }
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      test=userData.getInt('userId').toString();
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().post(
          "${JobFinderConstants.BaseUrl}/chat/user?massage=$Msg&user_id=$test&comp_id=1",
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        bool status = response.data['status'];
        print(status);
        if(status){
          print("message sent");
        }else{
          print("message no sent");
        }



        emit(UserPostMessageSuccess());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(UserPostMessageFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingSugesstedJobFail());
    }
  }


  ///////////////////////////////////////////////////////
  //------------------getChat------------------------//
  Future<void> getChatContent(
      context,
      ) async {
    // Trying to get the token from the storage
    try {
      SharedPreferences userData = await SharedPreferences.getInstance();
      token = userData.getString('token');
      test=userData.getInt('userId').toString();
      print(token);
      emit(GettingTokenSuccessfully());
      // Getting token successfully, now getting all Jobs
      try {
        Response response = await Dio().get(
          "${JobFinderConstants.BaseUrl}/chat?user_id=$test&comp_id=1",
          options: Options(
            headers: {
              'Authorization': 'Bearer $token',
            },
          ),
        );

        bool status = response.data['status'];
        UserMsgList=response.data['data'];

        if(status){
          print("success");
        }
        else {
          print ("failed");
        }
        emit(getChatSuccess());
      } catch (error) {
        // Handle errors
        print('Error is not in the token');
        print(error);
        emit(getChatFail());
      }
    } catch (error) {
      print('Getting token failed');
      print(error);
      emit(GettingTokenFailed());
    }
  }




}