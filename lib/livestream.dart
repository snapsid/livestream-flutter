import 'package:flutter/material.dart';
import 'package:livestream/const.dart';
import 'package:livestream/login.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class MyLive extends StatelessWidget {
  final String liveID;
  final bool isHost;
  const MyLive({Key? key,required this.liveID, this.isHost = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: Constants.appId,// Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: Constants.appSign,// Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: MyLogin.userId,
        userName: MyLogin.name,
        liveID: liveID,
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}
