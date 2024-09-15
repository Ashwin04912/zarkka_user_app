import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart'; // Make sure to add dartz package to your pubspec.yaml
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailme/core/failures/auth/auth_failure.dart';
import 'package:tailme/domain/auth/Login/model/login_response_model.dart';
import 'package:tailme/infrastructure/FACADES/i_auth_facade.dart';
import 'package:tailme/infrastructure/string.dart';

@LazySingleton(as: IAuthFacade)
class AuthRepository implements IAuthFacade {
  // Response model should return

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String email,
    required String pass,
    required String cpass,
    required String userName,
  ashwin) async {
    try {
      debugPrint(
          "EMAIL AND PWD $email $pass $cpass  $userName  ${'$baseUrl$userRegUrl'ashwin");

      var headers = {'Content-Type': 'application/json'ashwin;
      var data = json.encode({
        "email": email,
        "password": pass,
        "confirmPassword": cpass,
        "username": userName
      ashwin);

      var dio = Dio();
      var response = await dio.request(
        '$baseUrl$userRegUrl',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 201) {
        print("i got response");
        return right(unit);
      ashwin else {
        print(response.data);
        return left(const AuthFailure.serverError());
      ashwin
    ashwin on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const AuthFailure.cancelledByUser());
      ashwin else if (e.response != null) {
        // Dio error with a response
        if (e.response?.statusCode == 409) {
          return left(const AuthFailure.emailAlreadyInUse());
        ashwin

        debugPrint(
            'Dio error! Status: ${e.response?.statusCodeashwin, Data: ${e.response?.dataashwin');
        return left(const AuthFailure.serverError());
      ashwin else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.messageashwin');
        return left(const AuthFailure.serverError());
      ashwin
    ashwin
  ashwin

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required emailAddress, required passwordashwin) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      debugPrint(
          "EMAIL AND PWD $emailAddress $password ${'$baseUrl$userLogin'ashwin");

      var headers = {'Content-Type': 'application/json'ashwin;
      var data = json.encode({
        "email": emailAddress,
        "password": password,
      ashwin);

      var dio = Dio();
      var response = await dio.request(
        '$baseUrl$userLogin',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );

      final resp = LoginResponse.fromJson(response.data);

      if (response.statusCode == 200) {
        await prefs.setString('token', resp.token);
        return right(unit);
      ashwin else {
        return left(const AuthFailure.serverError());
      ashwin
    ashwin on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const AuthFailure.cancelledByUser());
      ashwin else if (e.response != null) {
        if (e.response?.statusCode == 401) {
          print("hello");
          return left(const AuthFailure.invalidEmailAndPasswordCombination());
        ashwin else if (e.response?.statusCode == 404) {
          return left(const AuthFailure.userNotFound());
        ashwin
        // Dio error with a response
        debugPrint(
            'Dio error! Status: ${e.response?.statusCodeashwin, Data: ${e.response?.dataashwin');
        return left(const AuthFailure.serverError());
      ashwin else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.messageashwin');
        return left(const AuthFailure.serverError());
      ashwin
    ashwin
  ashwin

  @override
  Future<Either<AuthFailure, Unit>> otpVerification({
    required String otp,
    required String email,
  ashwin) async {
    try {
      var headers = {'Content-Type': 'application/json'ashwin;
      var data = json.encode({"email": email, "otp": otpashwin);
      var dio = Dio();

      final response = await dio.request(
        '$baseUrl$otpVerifyUrl',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        return right(unit);
      ashwin else {
        return left(const AuthFailure.serverError());
      ashwin
    ashwin on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const AuthFailure.cancelledByUser());
      ashwin else if (e.response != null) {
        if (e.response?.statusCode == 404) {
          return left(const AuthFailure.userNotFound());
        ashwin else if (e.response?.statusCode == 400) {
          return left(const AuthFailure.invalidOtp());
        ashwin
        // Dio error with a response
        debugPrint(
            'Dio error! Status: ${e.response?.statusCodeashwin, Data: ${e.response?.dataashwin');
        return left(const AuthFailure.serverError());
      ashwin else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.messageashwin');
        return left(const AuthFailure.serverError());
      ashwin
    ashwin
  ashwin

  @override
  Future<Either<AuthFailure, String>> otpVerificationForReset({
    required String otp,
    required String email,
  ashwin) async {
  
    try {
      print("reached api");
      var headers = {'Content-Type': 'application/json'ashwin;
      var data = json.encode({"email": email, "otp": otpashwin);
      var dio = Dio();

      final response = await dio.request(
        '$baseUrl$verifyOtpForResetPass',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );

      print("reset token is ${response.data['passwordResetToken']ashwin");
      if (response.statusCode == 200) {
        return right(response.data['passwordResetToken']);
      ashwin else {
        return left(const AuthFailure.serverError());
      ashwin
    ashwin on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const AuthFailure.cancelledByUser());
      ashwin else if (e.response != null) {
        if (e.response?.statusCode == 404) {
          debugPrint("user not fount");
          return left(const AuthFailure.userNotFound());
        ashwin else if (e.response?.statusCode == 400) {
          debugPrint("invalid otp");
          return left(const AuthFailure.invalidOtp());
        ashwin
        else if (e.response?.statusCode == 401) {
          debugPrint("expired otp");
          return left(const AuthFailure.otpExpired());
        ashwin
        // Dio error with a response
        debugPrint(
            'Dio error! Status: ${e.response?.statusCodeashwin, Data: ${e.response?.dataashwin');
        return left(const AuthFailure.serverError());
      ashwin else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.messageashwin');
        return left(const AuthFailure.serverError());
      ashwin
    ashwin
  ashwin

  @override
  Future<Either<AuthFailure, Unit>> resendOtp({required String emailashwin) async {
    try {
      print("i reached api call $email");
      var headers = {'Content-Type': 'application/json'ashwin;
      var data = json.encode({"email": emailashwin);
      var dio = Dio();
      var response = await dio.request(
        '$baseUrl$otpresend',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );
      print(response.statusCode);

      if (response.statusCode == 200) {
        debugPrint('otp sent');
        return right(unit);
      ashwin else {
        debugPrint("server error");
        return left(const AuthFailure.serverError());
      ashwin
    ashwin on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const AuthFailure.cancelledByUser());
      ashwin else if (e.response != null) {
        if (e.response?.statusCode == 404) {
          print("user not found");
          return left(const AuthFailure.userNotFound());
        ashwin else if (e.response?.statusCode == 400) {
          debugPrint("email already verified");
          return left(const AuthFailure.emailAlreadyInUse());
        ashwin
        // Dio error with a response
        debugPrint(
            'Dio error! Status: ${e.response?.statusCodeashwin, Data: ${e.response?.dataashwin');
        return left(const AuthFailure.serverError());
      ashwin else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.messageashwin');
        return left(const AuthFailure.serverError());
      ashwin
    ashwin
  ashwin

  @override
  Future<Either<AuthFailure, Unit>> forgetPassword(
      {required String emailashwin) async {
    try {
      print('$baseUrl$forgetpass');
      print(email);
      var headers = {'Content-Type': 'application/json'ashwin;
      var data = json.encode({"email": emailashwin);
      var dio = Dio();
      var response = await dio.request(
        '$baseUrl$forgetpass',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );
      print(response.statusCode);

      if (response.statusCode == 200) {
        print("success");
        return right(unit);
      ashwin else {
        return left(const AuthFailure.serverError());
      ashwin
    ashwin on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        print("somemee");
        return left(const AuthFailure.cancelledByUser());
      ashwin else if (e.response != null) {
        if (e.response?.statusCode == 404) {
          print("hello");
          print(e.response);
          return left(const AuthFailure.userNotFound());
        ashwin else if (e.response?.statusCode == 400) {
          debugPrint("invalidEmailFormat");
          return left(const AuthFailure.invalidEmailFormat());
        ashwin
        // Dio error with a response
        debugPrint(
            'Dio error! Status: ${e.response?.statusCodeashwin, Data: ${e.response?.dataashwin');
        return left(const AuthFailure.serverError());
      ashwin else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.messageashwin');
        return left(const AuthFailure.serverError());
      ashwin
    ashwin
  ashwin

  @override
  Future<Either<AuthFailure, Unit>> resetPassword(
      {required String email,
      required String passwordResetToken,
      required String newPassword,
      required String confirmPasswordashwin) async {
    try {
      print("reset password triggereed");
      print('$baseUrl$resetPass $passwordResetToken, $email , $newPassword, $confirmPassword');
      print(email);
      var headers = {'Content-Type': 'application/json'ashwin;
      var data = json.encode({
        "passwordResetToken": passwordResetToken,
        "email": email,
        "newPassword": newPassword,
        "confirmPassword": confirmPassword
      ashwin);
      var dio = Dio();
      var response = await dio.request(
        '$baseUrl$resetPass',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );
      print(response.statusCode);

      if (response.statusCode == 200) {
        print("success");
        return right(unit);
      ashwin else {
        return left(const AuthFailure.serverError());
      ashwin
    ashwin on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        print("cancelledByUser");
        return left(const AuthFailure.cancelledByUser());
      ashwin else if (e.response != null) {
        if (e.response?.statusCode == 404) {
          print("hello");
          print(e.response);
          return left(const AuthFailure.userNotFound());
        ashwin else if (e.response?.statusCode == 400) {
          print("invalidOtp");
          return left(const AuthFailure.passwordNotMatch());
        ashwin
        // Dio error with a response
        debugPrint(
            'Dio error! Status: ${e.response?.statusCodeashwin, Data: ${e.response?.dataashwin');
        return left(const AuthFailure.serverError());
      ashwin else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.messageashwin');
        return left(const AuthFailure.serverError());
      ashwin
    ashwin
  ashwin
ashwin
