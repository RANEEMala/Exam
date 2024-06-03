import 'package:exam_end/config/get.dart';
import 'package:exam_end/model/chat.dart';
import 'package:exam_end/service/chat_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  core.get<SharedPreferences>().getString('username')==null
            ?
             HomePage()
            : MyWidget()
    );
  }
}

class HomePage extends StatelessWidget {
   HomePage({super.key});
  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: 
           Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Spacer(),
            SizedBox(
              child: 
                
                 Text("r i i d e", style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.w600),
                ),
              
            ),
            Spacer(),
             SizedBox(
              child: 
                
                 Text("Welcome to ride", style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.w600),
                ),
              
            ),
            Spacer(),
             Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 300.0),
           child:   Text("Username" ,style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300),),
              ),),
             
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                                     width: 400,
                                    height: 90,
                                        
                              decoration: const BoxDecoration(
                                          color: Colors.black,
                                          
                                        ),
                                         
                                        child:TextField(
                                          controller: username,
                          onChanged: (value) {
                            core
                                .get<SharedPreferences>()
                                .setString('username', value);
                          },
                            
                            decoration: InputDecoration(
                              hintText: "Enter email or username",
                              hintStyle: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                              fillColor: Colors.grey,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                              ),
                            )),
                                      
                      ),
                   ),
              Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 300.0),
           child:  Text("password" ,style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w300),),
              ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                                        width: 400,
                                        height: 90,
                                        
                                        decoration: const BoxDecoration(
                                          color: Colors.black,
                                          
                                        ),
                                         
                                        child:TextField(
                            
                            decoration: InputDecoration(
                              hintText: "Enter your password",
                              hintStyle: const TextStyle(
                                  color: Colors.white, fontSize: 12),
                              fillColor: Colors.grey,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                              ),
                            )),
                                      
                      ),
            ),
                   
                      Container(child: Padding(
                        padding: const EdgeInsets.only(right: 30,left: 30,bottom: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                         
                          Text(
                          "Remember me",
                          style: TextStyle(color: Color(0xffEDDBC5)),
                        ),
                        Text(
                          "Forgot password",
                          style: TextStyle(color: Colors.blue),
                        ),
                        ],),
                      ),),
                      Spacer(),
                    
                     InkWell(
              onTap: () {
  
Navigator.push(context, MaterialPageRoute(builder:(context) => const itemPage(),),);
              },
              child:
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Container(
                                        width: 400,
                                        height: 50,
                                        child: Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(color: Color(0xffEDDBC5),fontSize: 18,fontWeight: FontWeight.bold),
                      ),
                                        ),
                                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff4CE5B1
                      )),),
                    ),
        ),
       
          
          Padding(
                  padding: const EdgeInsets.only(left: 130.0),
                  child: Row(
                  children: [
                    
                  
                     Text("Don’t have an account ?  " ,style: TextStyle(color: Colors.grey,fontSize: 18) ),
                      Text("Signin" ,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18), ),],
                  ),
                ),
                Spacer(),
          
          
          
          ],),
         /* add child content here */
      
    
      );
  }
}


class itemPage extends StatelessWidget {
  const itemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        children: [
          Flexible(
              child: Container(
            width: double.maxFinite,
            height: 60,
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                   child: Icon(Icons.arrow_back)),
                   Center(
                    child: Text(
                      "Invite Friends",
                      style: TextStyle(color: Colors.black,fontSize: 24 ,fontWeight: FontWeight.bold),
                    ),
                  ),
                
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Icon(Icons.delete),
                ),
                 
                  
              ],
            ),
           
          )),
           Container(
          color: Colors.white,
           child:  Image.asset("assets/image/image1.jpg", fit:BoxFit.fill),
           width: 460,
          
          ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text(
                        "Invite Friends",
                        style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),
                      ),
         ),
          Text(
                      "Sign up a friend with your referral",
                      style: TextStyle(color: Colors.black),
                    ),
                     Text(
                      "code and earn \$RIIDE and/or free rides.",
                      style: TextStyle(color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                                      width: 400,
                                      height: 50,
                                      
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        
                                      ),
                                       
                                      child:TextField(
                          
                          decoration: InputDecoration(
                            hintText: "Share your invite code...",
                            hintStyle: const TextStyle(
                                color: Colors.white, fontSize: 12),
                            fillColor: Colors.grey,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                            ),
                          )),
                                    ),
                    ),
               InkWell(
              onTap: () {
  
Navigator.push(context, MaterialPageRoute(builder:(context) => const MyWidget(),),);
              },
              child:
                    Container(
                  width: 400,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Invite Friends",
                      style: TextStyle(color: Color(0xffEDDBC5)),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff4CE5B1
)),),
                ),
        ]),
    );
  }
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: 
      Column(
        children: [
          Flexible(
            flex: 4,
              child: Container(
            width: double.maxFinite,
            height: 60,
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                   child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) => itemPage(),),);
                      
                    },
                    child: Icon(Icons.arrow_back))),
                   Center(
                    child: Text(
                      "Invite Friends",
                      style: TextStyle(color: Colors.black,fontSize: 24 ,fontWeight: FontWeight.bold),
                    ),
                  ),
                
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Icon(Icons.delete),
                ),
                 
                  
              ],
            ),
           
          )),
                Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                                      width: 400,
                                      height: 40,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:TextField(
                          decoration: InputDecoration(
                            hintText: "Search here..",
                            hintStyle: const TextStyle(
                                color: Colors.white, fontSize: 12),
                                 prefixIconColor:  Colors.white,
                                prefixIcon: const Icon(Icons.search),
                            fillColor: Colors.grey,
                            filled: true,
                            suffixIcon: Icon(Icons.record_voice_over),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 2.0,
                              ),
                            ),
                          )),
                                    ),
                    ),
                     Flexible(
                      flex: 20,
              child: FutureBuilder(
                future :  getAllChat(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return  ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) => 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(
                        "${snapshot.data![index].name}",
                      ),
                     trailing: Text(
                        "${snapshot.data![index].date}",
                        
                      ),
                        subtitle: Text(
                        "${snapshot.data![index].message}",
                        
                      ),
                     leading: CircleAvatar(radius: 30,
                  backgroundImage: NetworkImage(snapshot.data![index].image),
                                ),
                      ),
                ),
              ); 
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ),
                  

    ]),);
  }
}
