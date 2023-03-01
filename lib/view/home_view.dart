import 'package:flutter/material.dart';
import 'package:flutter_firebase_notification/firebase/notifications_services.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.isTokenRefresh();
    notificationServices.getDeviceToken().then((value) {
      print("Device Token :- ${value.toString()}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
