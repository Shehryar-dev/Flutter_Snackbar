
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget{

  final String BtnText;
  final Icon? icon;
  final TextStyle? txtStyle;
  final Color? BgColor;
  final VoidCallback? callback;


  RoundedButton(
      {
        required this.BtnText,
        this.icon,
        this.txtStyle,
        this.BgColor = Colors.blue,
        this.callback
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      if(callback!= null){
        callback!();
      }else{
        print("Rounded Button Press");
      }
    }, child: icon!=null ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon!,
        SizedBox(width: 8,),
        Text(BtnText, style: txtStyle,),
      ],
    ): Text(BtnText, style: txtStyle,), style: ElevatedButton.styleFrom(
      backgroundColor: BgColor,
      shadowColor: BgColor,
      shape: RoundedRectangleBorder(
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(21),
        //   bottomRight: Radius.circular(21)
        // ),
        borderRadius: BorderRadius.circular(50)

      ),
    )
    );
  }
}