
import 'package:myflutter_ecommerce/data/api/api_client.dart';
import 'package:myflutter_ecommerce/models/signup_body_model.dart';
import 'package:myflutter_ecommerce/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo{
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({
    required this.apiClient,
    required this.sharedPreferences
});

  registration(SignUpBody signUpBody){
    apiClient.postData(AppConstants.REGISTRATION_URI, signUpBody.toJson());
  }
}