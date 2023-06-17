import 'package:flutter/material.dart';
import 'package:dep_management/font_awesome_flutter.dart';

class ComponentButton extends StatelessWidget {
  final int flex;
  final String title;
  final IconData icon;
  final void Function() onTap;

  const ComponentButton({
    super.key,
    required this.flex,
    required this.title,
    required this.icon,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex:flex,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        elevation: 0.1,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
            child: Column(
              children: [
                FaIcon(icon),
                const SizedBox(height: 8,),
                Text(title, style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
