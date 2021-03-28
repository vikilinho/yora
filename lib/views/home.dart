import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yora/controller/home_controller.dart';
import 'package:yora/controller/login_controller.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final LoginController _loginController = Get.find();
  final HomeController _homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Dashboard',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Text(
              'Welcome ${_loginController.emailTextController.text}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: _homeController.userListData.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      _homeController.userListData[index].firstName,
                    ),
                    subtitle: Text(
                      _homeController.userListData[index].email,
                    ),
                    trailing: Image.network(
                      _homeController.userListData[index].avatar,
                      width: 80,
                      height: 80,
                      fit: BoxFit.contain,
                    ),
                    leading: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          _homeController.deleteItem(index);
                        }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
