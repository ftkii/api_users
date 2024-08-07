import 'package:flutter/material.dart';
import 'package:hash_pj/api/api.dart';
import 'package:hash_pj/models/users.dart';

class UsersProvider extends ChangeNotifier {
  List<Users> user = []; //نخزن معلومات اليوزر

  bool isLoading =
      false; //فولس لان البيانات ماجنت توها قاعده تتحمل لو صارت ترو يعني البيانات جت

  String? errorMessage; //اذا ظهر لي خطأ

// _ => private
  Api _api = Api(); //اوبجكت خاص بال api

  Future<void> fetchUser() async {
    //فنكشن خاصه بالستيت مانجمنت
    isLoading = true;
    errorMessage = null;
    notifyListeners(); // تعتبر وضيفتها نفس السيت ستيت لما نجيب البيانات كلها لازم نحطها
    //انه زي تحديث للبيانات وهي تجي مع البروفايدر

    try {
      user = await _api.getUsers();
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
