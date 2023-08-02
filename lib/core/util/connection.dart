import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:store/config/boiler/util_boiler.dart';

class ConnectionCore {
  Future<bool> hasConnection(BuildContext context,
      {showSnackBar = true}) async {
    ConnectivityResult connectivityResult =
        await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.ethernet) {
      return true;
    } else {
      // ignore: use_build_context_synchronously
      if (showSnackBar) ShowErrorCore.connectionError(context);
      return false;
    }
  }
}
