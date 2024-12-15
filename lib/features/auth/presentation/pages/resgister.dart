import 'package:flutter/material.dart';
import 'package:flutter_application_3/core/utils/auth_locator.dart';
import 'package:flutter_application_3/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:flutter_application_3/features/auth/presentation/manager/cubit/auth_cubit.dart';
import 'package:flutter_application_3/features/auth/presentation/pages/login.dart';
import 'package:flutter_application_3/features/home/presentation/screen/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// تأكد من استيراد صفحة تسجيل الدخول

class Resgister extends StatelessWidget {
  const Resgister({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(
        authRepository: getIt.get<AuthRepository>(),
      ),
      child: BlocConsumer<AuthCubit,AuthState>(
            listener: (context,state){
          if(state is LoginSuccessState){
             ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                backgroundColor:Colors.green,
                 content: Text("Login success"),
              ),
            );
             AuthCubit.get(context).getUserData(uid:state.uid);
  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
          }else if (state is LoginErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
               backgroundColor: Colors.red,
                content: Text(state.errMessage.toString()),
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.blue[200], // لون الخلفية
            body: Form(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/img/Untitled_design__3_-removebg-preview.png', // مسار اللوجو (استبدل بمسار اللوجو الفعلي)
                          width: 800,
                          height: 100,
                        ),

                        // إضافة صورة اللوجو
                        const SizedBox(height: 0), // مسافة بين الصورة والنص
                        const Text(
                          'Getting Started!                                            ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 0), // مسافة بين النص
                        const Text(
                          'Create an Account to Continue your allCourses',
                          textAlign: TextAlign.left, // محاذاة النص إلى المنتصف
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 0), // مسافة قبل حقول الإدخال
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'First Name',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Last Name',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const TextField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            border: OutlineInputBorder(),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            const Text('Agree to Terms & Conditions'),
                          ],
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            // هنا يمكنك إضافة الإجراء المطلوب عند الضغط على زر "تسجيل الاشتراك"
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 100, vertical: 15),
                            backgroundColor: const Color.fromARGB(
                                255, 255, 255, 255), // لون الزر
                          ),
                          child: const Text('Sign Up'),
                        ),
                        const SizedBox(height: 20),
                        const Text('Or Continue With'),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.apple),
                              onPressed: () {
                                // هنا يمكنك إضافة الإجراء المطلوب عند الضغط على زر "Apple"
                              },
                            ),
                            const SizedBox(width: 20),
                            IconButton(
                              icon: const Icon(Icons
                                  .facebook), // يمكنك استخدام أي أيقونة مناسبة
                              onPressed: () {
                                // هنا يمكنك إضافة الإجراء المطلوب عند الضغط على زر "Facebook"
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed: () {
                            // الانتقال إلى صفحة تسجيل الدخول عند الضغط
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: const Text(
                            "Already have an Account? SIGN IN",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
