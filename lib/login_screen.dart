import 'package:flutter/material.dart';
import 'package:trial_app/const.dart';


class LoginScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Stack(
                children: [
                  Image.asset(bgImage,height: height * 0.45, width: width, fit: BoxFit.cover,),
                  // Container(height: height * 0.42,
                  // width: width ),
      
                  Container (
                    height: height *0.46, 
                      width: width, 
                        decoration: BoxDecoration(
                           gradient: LinearGradient(
                              begin:Alignment.topCenter ,
                                end: Alignment.bottomCenter,
                                    colors: [Colors.transparent,Colors.white]
                  ),
                  ),
              ),
              ],  
              ),
              Center(
                child:Text(appName, style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
              ),
              Center(
                child: 
                  Text(slogan, style: TextStyle(color: Colors.grey),
                  ),
              ),
      
      
              //Email
      
      
              Padding(
                padding: const EdgeInsets.all(8.0),
                  child: Container(child: Text("   $loginStr  ", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)
                  ),
                  prefixIcon: Icon(Icons.email, color: Colors.green,),
                  labelText:"Email",
                  labelStyle: TextStyle(fontSize: 20),),
                  
                  ),
              ),
              
              //password
              
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //     child: Container(child: Text("   $loginStr  ", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green)
                  ),
                  prefixIcon: Icon(Icons.lock, color: Colors.green),
                  labelText:"Password",
                  labelStyle: TextStyle(fontSize: 20),),
                  
                  ),
              ),
      
              Align( alignment: Alignment.centerRight,
                child: TextButton(onPressed: (){}, child: Text(forgottext, style: TextStyle(color: Colors.black ),))),
      
              Center(
                child: SizedBox(height: height * 0.07, width: width -30,
                  child: TextButton(onPressed: () {}, child: Text("Login",style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                    ),
                    ),
                    ),
              



              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(Account),
              Align( 
                child: TextButton(onPressed: (){}, child: Text(createaccount, style: TextStyle(color: Colors.red ),))),

                ],
              )
              
      
              
                    
      
              ],
        ),
      ),
    );
  }
}
