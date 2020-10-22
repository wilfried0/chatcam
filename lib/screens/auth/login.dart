import 'dart:ui';

import 'package:chatcam/screens/auth/register.dart';
import 'package:chatcam/utils/constantes.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool _isHidden = true, isConnecting = false;





  void _toggleVisibility(){
    setState((){
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg_red.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0.0, bottom: 10.0, left: 40.0, right: 40.0),
                      child: new Image.asset('assets/images/love.png'),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50),
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.only(
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(0.0),
                        ),
                        color: Colors.transparent,
                        border: Border.all(
                            color: BLANC,
                            width: bordure
                        ),
                      ),
                      height: Hchamp,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              flex: 5,
                              child: CountryCodePicker(
                                showFlag: true,
                                textStyle: TextStyle(
                                    fontSize: Ttext,
                                    color: BLANC
                                ),
                                onChanged: (CountryCode code) {
                                  setState(() {

                                  });
                                },
                              )
                          ),
                          new Expanded(
                            flex:10,
                            child: new TextFormField(
                              controller: null,
                              keyboardType: TextInputType.phone,
                              style: TextStyle(
                                fontSize: Ttext,
                                color: BLANC,
                              ),
                              validator: (String value){
                                if(value.isEmpty){
                                  return "Numéro de téléphone invalide !";//SitLocalizations.of(context).invalid_phone;
                                }else{

                                  return null;
                                }
                              },
                              decoration: InputDecoration.collapsed(
                                hintText:"Numéro de téléphone",// SitLocalizations.of(context).phone,
                                hintStyle: TextStyle(
                                  fontSize: Ttext,
                                  color: BLANC,
                                ),
                                //contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
                    child: Container(
                      margin: EdgeInsets.only(top: 0.0),
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(10.0),
                        ),
                        color: Colors.transparent,
                        border: Border.all(
                            width: bordure,
                            color: BLANC
                        ),
                      ),
                      height: Hchamp,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex:2,
                            child: new Icon(Icons.vpn_key, color: BLANC,),
                          ),
                          new Expanded(
                            flex:10,
                            //child: Padding(
                            child: new TextFormField(
                              controller: null,
                              keyboardType: TextInputType.text,
                              style: TextStyle(
                                  fontSize: Ttext,
                                  color: BLANC
                              ),
                              validator: (String value){
                                if(value.isEmpty){
                                  return 'Champ mot de passe vide !';
                                }else if(value.length>12){
                                  return '12 caractères au maximun!';
                                }else{
                                  return null;
                                }
                              },
                              decoration: InputDecoration.collapsed(
                                hintText: 'Mot de passe',
                                hintStyle: TextStyle(color: BLANC,
                                    fontSize: Ttext),
                                //contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              ),
                              obscureText: _isHidden,
                              /*textAlign: TextAlign.end,*/
                            ),
                            //),
                          ),
                          Expanded(
                            flex:2,
                            child: new IconButton(
                              onPressed: _toggleVisibility,
                              icon: _isHidden? new Icon(Icons.visibility_off,):new Icon(Icons.visibility,),
                              color: BLANC,
                              iconSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right: 20, top: 10),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: (){

                        },
                        child: Text("Mot de passe oublié?", style: TextStyle(
                          color: BLANC,
                          fontSize: Ttext,
                            fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal
                        ),),
                      ),
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10),
                    child: new GestureDetector(
                      onTap: () {
                        setState(() {

                        });
                      },
                      child: new Container(
                        height: Hchamp,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: new BoxDecoration(
                          color: ROSE,
                          border: new Border.all(
                            color: Colors.white,
                            width: bordure,
                          ),
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        child: new Center(child: isConnecting==false?new Text("CONNEXION",//SitLocalizations.of(context).suivant,
                          style: new TextStyle(fontSize: Ttext, color: BLANC, fontWeight: FontWeight.normal),):
                        Theme(
                            data: ThemeData(cupertinoOverrideTheme: CupertinoThemeData(brightness: Brightness.dark)),
                            child: CupertinoActivityIndicator(radius: 20,)),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width/2 - 42,
                          height: 1,
                          color: BLANC
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Text("OU", style: TextStyle(
                            color: BLANC,
                            fontSize: Ttext
                          ),),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/2 - 42,
                          height: 1,
                          color: BLANC,
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/facebook.png'),
                            radius: radius,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: CircleAvatar(
                            backgroundColor: BLANC,
                            radius: radius-2,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/google.png'),
                              radius: radius - 5,
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            backgroundColor: BLANC,
                            radius: radius-2,
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/twitter.png'),
                              radius: radius - 5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10),
                    child: new GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                      },
                      child: new Container(
                        height: Hchamp,
                        width: MediaQuery.of(context).size.width - 40,
                        decoration: new BoxDecoration(
                          color: ROSE,
                          border: new Border.all(
                            color: BLANC,
                            width: bordure,
                          ),
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        child: new Center(child: new Text("INSCRIPTION",//SitLocalizations.of(context).suivant,
                          style: new TextStyle(fontSize: Ttext, color: BLANC, fontWeight: FontWeight.normal),)
                        ),
                      ),
                    ),
                  ),


                  /*InkWell(
                    onTap: (){

                    },
                    child: Text("Nouveau?  Créer votre compte", style: TextStyle(
                        color: BLANC,
                        fontSize: Ttext,
                      fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal
                    ),),
                  ),*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
