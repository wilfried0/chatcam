import 'dart:ui';

import 'package:chatcam/screens/auth/login.dart';
import 'package:chatcam/utils/constantes.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  bool _isHidden = true, isConnecting = false, _check2=false;
  String sexe;
  var _sexes = ["MASCULIN", "SINGULLIER"];

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
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: MediaQuery.of(context).size.width - 40),
                    child: IconButton(
                        icon: Icon(Icons.arrow_back, color: BLANC, size: 30,),
                        onPressed: (){
                          Navigator.pop(context);
                        }
                    ),
                  ),

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
                            child: new Icon(Icons.person, color: BLANC,),
                          ),
                          new Expanded(
                            flex:12,
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
                                  return 'Champ prénom vide !';
                                }else{
                                  return null;
                                }
                              },
                              decoration: InputDecoration.collapsed(
                                hintText: 'Prénom',
                                hintStyle: TextStyle(color: BLANC,
                                    fontSize: Ttext),
                                //contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              ),
                            ),
                            //),
                          ),
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
                            child: new Icon(Icons.person, color: BLANC,),
                          ),
                          new Expanded(
                            flex:12,
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
                                  return 'Champ nom vide !';
                                }else{
                                  return null;
                                }
                              },
                              decoration: InputDecoration.collapsed(
                                hintText: 'Nom',
                                hintStyle: TextStyle(color: BLANC,
                                    fontSize: Ttext),
                                //contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              ),
                            ),
                            //),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                    child: Container(
                      decoration: new BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: new BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(10.0),
                        ),
                        border: Border.all(
                            color: BLANC,
                            width: bordure
                        ),
                      ),
                      height: Hchamp,
                      child: Row(
                        children: <Widget>[
                          new Expanded(
                            flex:2,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: new Icon(Icons.group, color: BLANC,),
                            ),
                          ),
                          Expanded(
                            flex: 12,
                            child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  icon: Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: new Icon(Icons.arrow_drop_down_circle,
                                      color: BLANC,),
                                  ),
                                  isDense: false,
                                  elevation: 1,
                                  isExpanded: true,
                                  onChanged: (String selected){
                                    setState(() {
                                      sexe = selected;
                                    });
                                  },
                                  value: sexe,
                                  hint:Text('Sélectionner votre sexe',
                                    style: TextStyle(
                                      color: BLANC,
                                      fontSize:Ttext,
                                    ),),
                                  items: _sexes.map((String name){
                                    return DropdownMenuItem<String>(
                                      value: name,
                                      child: Text(name,
                                        style: TextStyle(
                                          color: BLANC,
                                          fontSize:Ttext,
                                        ),),
                                    );
                                  }).toList(),
                                )
                            ),
                          ),
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
                                }else{
                                  return null;
                                }
                              },
                              decoration: InputDecoration.collapsed(
                                hintText: 'Cofirmez le mot de passe',
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
                    padding: const EdgeInsets.only(left: 5, right: 20),
                    child: Row(
                      children: <Widget>[
                        Checkbox(
                            activeColor: BLEU_MARINE,
                            value: _check2,
                            onChanged: (bool val){
                              setState(() {
                                _check2 = val;
                              });
                            }
                        ),
                        Expanded(
                          child:RichText(
                            text: TextSpan(
                              text: 'En validant le présent formulaire, vous acceptez les ',
                              style: TextStyle(
                                color: BLEU_MARINE,
                                fontFamily: 'Poppins',
                                fontSize: Ttext - 3,
                                  fontStyle: FontStyle.italic
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'conditions d\'utilisations.', style: TextStyle(fontWeight: FontWeight.normal, color: BLANC,
                                decoration: TextDecoration.underline),
                                ),
                              ],
                            ),
                          ),

                          /*Text("En validant le présent formulaire, vous acceptez les conditions d'utilisations.",style: TextStyle(
                              color: BLANC,
                              fontSize: Ttext - 3,
                              fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic
                          ),overflow: TextOverflow.clip,),*/
                        ),
                      ],
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10),
                    child: new GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
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
                        child: new Center(child: isConnecting==false?new Text("INSCRIPTION",//SitLocalizations.of(context).suivant,
                          style: new TextStyle(fontSize: Ttext, color: BLANC, fontWeight: FontWeight.normal),):
                        Theme(
                            data: ThemeData(cupertinoOverrideTheme: CupertinoThemeData(brightness: Brightness.dark)),
                            child: CupertinoActivityIndicator(radius: 20,)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
