import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;

class AuthService extends ChangeNotifier{
  final String _baseUrl='identitytoolkit.googleapis.com';
  final String _firebaseToken = 'AIzaSyA1s6MczXWX_7kP01MbToLvf8uC4LQe1IY';
  final storage = new FlutterSecureStorage();
  Future<String?> createUser(String email, String password) async{
    final Map<String, dynamic> authData = {
      'email' : email, 
      'password' : password
    };

    final url = Uri.https(_baseUrl, '/v1/accounts:signUp', {
      'key': _firebaseToken
    });

    final res = await http.post(
      url,
      body: json.encode(authData)
    );

    final Map<String, dynamic> decodeRes = json.decode(res.body);

    if(decodeRes.containsKey('idToken')){
      return null;
    }else{
      return decodeRes['error']['message'];
    }
  }

  /*Revisar paquete flutter_secure_Storage en pub.dev*/

  Future<String?> login(String email, String password) async{
    final Map<String, dynamic> authData = {
      'email' : email, 
      'password' : password
    };

    final url = Uri.https(_baseUrl, '/v1/accounts:signInWithPassword', {
      'key': _firebaseToken
    });

    final res = await http.post(
      url,
      body: json.encode(authData)
    );

    final Map<String, dynamic> decodeRes = json.decode(res.body);

    if(decodeRes.containsKey('idToken')){
      await storage.write(key: 'token', value: decodeRes['idToken']);
      return null;
    }else{
      return decodeRes['error']['message'];
    }
  }

  Future logout() async{
    await storage.delete(key: 'token');
    return null;
  }

  Future<String> readToken() async{
    return await storage.read(key: 'token')?? '';
  }
}