import 'package:evently/routing/app-routes.dart';
import 'package:evently/ui/core/validation.dart';
import 'package:evently/utils/app_colors.dart';
import 'package:evently/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();
  bool isTextSecure = true; // To toggle password visibility
  double _height = 130.0;
  void _togglePasswordVisibility() {
    setState(() {
      isTextSecure = !isTextSecure;
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        // Change margin based on scroll position
        _height = _scrollController.position.pixels > 0 ? 0.0 : 120.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:
        AppColors.white, // Set the background color of the splash screen
        body: SingleChildScrollView(
          child: Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: SizedBox(
              height:
                  MediaQuery.of(
                    context,
                  ).size.height,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Expanded(
                      child: Image.asset(
                        AppImages.logo, // Add your app logo here
                        width: 152.w,
                        height: 157.h,
                      ),
                    ),
                    Text('Evently',style: TextStyle(fontSize: 36.sp,fontWeight: FontWeight.w400,color:  AppColors.blue),),
                    SizedBox(height: 10.h),
                    Expanded(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 353,
                              child: TextFormField(
                                validator: Validation.validateEmail, // Call validateEmail
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromRGBO(214, 223, 241, 0.47),
                                  labelText: 'Email',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                onChanged: (text) {
                                  print(text);
                                },
                              ),
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: 353,
                              child: TextFormField(
                                validator: Validation.validatePassword,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromRGBO(214, 223, 241, 0.47),
                                  labelText: 'Password',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      isTextSecure
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                    onPressed: _togglePasswordVisibility,
                                  ),
                                ),
                                onChanged: (text) {
                                  print(text);
                                },
                                obscureText: isTextSecure,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 353,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.pushReplacement(
                          //   context,
                          //   CupertinoPageRoute(builder: (context) => HomeScreen()),
                          // );
                          if (_formKey.currentState?.validate() ?? false) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Login successful!')),
                            );
                            // Navigate to the Home route if validation passes
                            Navigator.pushReplacementNamed(
                              context,
                              RoutesNames.home,
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Validation failed!')),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.blue,
                          foregroundColor: AppColors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ), // Padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              16,
                            ),
                          ),
                        ),
                        child: Text("Login"),
                      ),
                    ),
      
                    SizedBox(
                      width: 353,
                      child: TextButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Color.fromRGBO(137, 143, 156, 1),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ), // Padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              16,
                            ), // Rounded corners
                          ),
                        ),
                        child: Text("Forgotten Password ?"),
                      ),
                    ),
                    Expanded(child: SizedBox(height: _height)),
                    SizedBox(
                      width: 353,
                      child: Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:AppColors.white,
                            foregroundColor: AppColors.blue,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ), // Padding
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                16,
                              ),
                            ),
                          ),
                          child: Text("Create Account"),
                        ),
                      ),
                    ),
                    Image.asset(
                      AppImages.secondImage, // Add your app logo here
                      width: 200,
                      height: 40,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
