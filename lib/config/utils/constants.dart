import 'package:flutter/material.dart';

class Constants {
  static const Color primaryColor = Color(0xFFE1A514);
  static const Color primaryColorAccent = Color(0xFFFBC22E);
  static const Color royalBlue = Color(0xFF064BB5);
  static const Color blue = Colors.blue;
  static Color blueAccent = Colors.blue[100]!;
  static const Color blackColor = Color(0xFF4A4A4A);
  static const Color grayColor = Color(0xFF8B8B8B);
  static const Color bg = Color(0xFFF5F5F6);

  static const String userDb = "user_box";
  // static const String baseUrl = "http://192.168.1.27:3000/api/";
  static const String baseUrl = "https://couponman-admin.vercel.app/api/";
  static const String loginUrl = "auth/login";
  static const String registerUrl = "auth/register";
  static const String getUserProfileUrl = "user/get-profile";
  static const String updateUserUrl = "user/update";
  static const String createPostUrl = "post/create";
  static const String getUserPosts = "user/get-posts";
  static const String getAllPosts = "post/get-all";
}
