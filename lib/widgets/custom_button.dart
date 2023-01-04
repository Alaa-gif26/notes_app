import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButon extends StatelessWidget {
  CustomButon({super.key, this.onTap, required this.text,  this.isLoading=false});
  VoidCallback? onTap;
  String text;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child:  isLoading ?const  SizedBox(height: 24,width: 24,child:  CircularProgressIndicator(color: Colors.white,)):Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
