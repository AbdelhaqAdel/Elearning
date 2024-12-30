import 'package:flutter/material.dart';
import 'package:flutter_application_3/features/auth/presentation/manager/cubit/auth_cubit.dart';
import 'package:flutter_application_3/features/auth/presentation/pages/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,required this.cubitContext});
  final BuildContext cubitContext;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Home Screen'),
      ),
      body: BlocProvider.value(
        value: cubitContext.read<AuthCubit>(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () async{
             await cubitContext.read<AuthCubit>().signOutWithGoogle();
               MaterialPageRoute(builder: (context) =>  Login());
         
            }, child: const Text('Logout'))
          ],
        ),
      ),
    );
  }
}
