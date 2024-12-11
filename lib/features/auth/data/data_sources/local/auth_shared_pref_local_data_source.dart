import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/features/auth/data/data_sources/local/auth_local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthSharedPrefLocalDataSource extends AuthLocalDataSource {
  @override
  Future<void> saveToken(String taken) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(CashConstants.tokenLey, taken);
  }

  @override
  Future<String> getTaken() async{
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(CashConstants.tokenLey) !;
  }
  }