import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:16.0,right: 16,left: 16),
      child: Row(
        children:  [
          Text(
            title,
            style: TextStyle(fontSize: 28),
          ),
          Spacer(),
          CustomSearchIcon(icon: icon,),
        ],
      ),
    );
  }
}
