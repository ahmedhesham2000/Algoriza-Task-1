import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_1/widgits/OutLinedButton.dart';
import 'package:task_1/widgits/TButton.dart';
import 'package:task_1/widgits/button.dart';
import 'package:task_1/widgits/dropdownItem.dart';

class Login extends StatefulWidget {
  static const String routName='login';
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    String dialCodeInitial = 'Egypt';
    String textNumberPhone = '';
    String result = '';
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/loginBackground.jpg'),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 500,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Welcome to Fashion Daily', style: TextStyle(
                              color: Colors.black38),),
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sign in ', style: TextStyle(color: Colors.purple,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Text('Help', style: TextStyle(
                                    fontSize: 15, color: Colors.purple),),
                                SizedBox(width: 2.5,),
                                Icon(
                                    Icons.help, size: 15, color: Colors.purple),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),

                      Text('Phone Number',
                        style: TextStyle(color: Colors.black38),),
                      SizedBox(height: 15,),

                      Row(
                        children: [
                          CountryListPick(
                            theme: CountryTheme(
                              alphabetSelectedTextColor: Colors.purple,
                              showEnglishName: true,
                              // to show or hide flag
                              isShowFlag: false,
                              // true to show  title country
                              isShowTitle: false,
                              // true to show code phone country
                              isShowCode: true,
                              // to show or hide down icon
                              isDownIcon: true,
                            ),
                            initialSelection: 'EG',
                            
                          ),
                          Expanded(
                              child: TextFormField(
                                onChanged: (text) {
                                  setState(() {
                                    textNumberPhone = text;
                                  });
                                },
                                decoration:
                                InputDecoration(
                                    labelText: "Enter your number",
                                  labelStyle: TextStyle(
                                      fontSize: 14,
                                      color: Colors.purple
                                  ),
                                  hintStyle: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.purple),
                                  ),
                                ),
                                style: TextStyle(fontSize: 18, color: Colors.black),
                                keyboardType: TextInputType.number,
                              ),
                          )
                        ],
                      ),
                      SizedBox(height: 20,),

                      Button(text: 'Sign in ', function: (){},color: Colors.purple, ),

                      SizedBox(height: 20,),

                      Center(child: Text('Or',style: TextStyle(color: Colors.black38,fontSize: 15,fontWeight: FontWeight.bold),)),

                      SizedBox(height: 20,),

                      ButtonOutlin(text: 'Sign in with Google', function: (){}, icon: FontAwesomeIcons.google),
                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Dont has any account?',style: TextStyle(color: Colors.purple),),
                          TButton(text: 'Register here', function: (){})
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
