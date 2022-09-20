import 'package:flutter/material.dart';
class AppContainer extends StatefulWidget {
  final double? height;
  final double? width;
  final Color? colour;
  final Widget? child;
  final double? borderradius;
  final Color? bordercolor;
  final String? text;
  final Color? textcolor;
  final double? fontsize;


   AppContainer({Key? key, this.height, this.width, this.colour, this.child, this.borderradius, this.bordercolor, this.text, this.textcolor, this.fontsize}) : super(key: key);

  @override
  _AppContainerState createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color:widget.colour,

      ),
      child: Center(child: Text(widget.text.toString(),style: TextStyle(color: widget.textcolor,fontSize:widget.fontsize),)),


    );
  }
}
