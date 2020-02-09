import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:vrc_model/vrc_model.dart';

void main() {
  group("VRC API", () {
    String vrcUser = Platform.environment["VRCUser"];
    String vrcPwd = Platform.environment["VRCPwd"];
    VRCModel vrc = VRCModel(appDocPath: "./");
    test('Init', () async {
      vrc.apiKey = await vrc.config();
    });
    test('Auth', () async {
      var authInfo = await vrc.login(vrcUser, vrcPwd);
      if (authInfo.requiresTwoFactorAuth.isNotEmpty) {
        if (await vrc.auth2FA("000000")) {
          authInfo = await vrc.userInfo();
        }
      }
      expect(authInfo.displayName, "Lumina_");
    });
    test('getUserInfo', () async {
      var info =
          await vrc.getUserByID("usr_3c5b20e5-ee00-4b77-8943-e0ef213d689a");
      expect(info?.displayName, "Lumina_");
    });
  });
}
