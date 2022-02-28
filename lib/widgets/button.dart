import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({
     Key? key,
     required this.onPressed,
     required this.text,
      }) : super(key: key);

    final VoidCallback? onPressed;
    final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFF25D366),
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('lib/images/whatsapp-icon.png', fit: BoxFit.contain, width: 36, height: 36,),
          const SizedBox(width: 10),
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 18),),
        ],
      ),
    );
  }
}