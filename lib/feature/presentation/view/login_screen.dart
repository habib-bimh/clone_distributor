import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final _globalkey = GlobalKey();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        // FocusScopeNode currentFocus = FocusScope.of(context);
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 2.0.h),
                Center(
                  child: Container(
                      height: 25.h,
                      width: 25.w,
                      child: Image.network(
                          "https://play-lh.googleusercontent.com/tmwME3NeK4doFn0Kd78p1g-k3sEf_EoDFTGPpdXeSpAMn9zSFzIyiQYZ8l8gLZCMFt4")),
                ),
                SizedBox(height: 2.0.h),
                const Text(
                  "Distributor Login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 5.0.h),
                Form(
                    key: _globalkey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: _emailcontroller,
                            decoration: const InputDecoration(
                                icon: Icon(Icons.person),
                                hintText: 'Email',
                                labelText: 'Email',
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: _passwordcontroller,
                            obscureText: true,
                            decoration: const InputDecoration(
                                icon: Icon(Icons.password),
                                hintText: 'Password',
                                labelText: 'Password',
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 5.0.h,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: const Text("Loging"),
                  color: Colors.blue,
                )
                // Center(
                //   child: Container(
                //     height: 5.0.h,
                //   ),
                // )
              ]),
        ),
      ),
    ));
  }
}
