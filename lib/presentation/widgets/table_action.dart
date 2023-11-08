import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class TableAction extends StatefulWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final Color? hoverColor;
  const TableAction({Key? key, required this.title, required this.icon, required this.onTap, this.hoverColor}) : super(key: key);

  @override
  State<TableAction> createState() => _TableActionState();
}

class _TableActionState extends State<TableAction> {
  bool _hovered = false;

  late Color hoverColor = widget.hoverColor ?? AppColors.darkGrey;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SelectionContainer.disabled(
        child: MouseRegion(
          onEnter: (_){
            setState(() {
              _hovered = true;
            });
          },
          onExit: (_){
            setState(() {
              _hovered = false;
            });
          },
          cursor: SystemMouseCursors.click,
          child: Row(
            children: [
              Icon(
                widget.icon,
                size: 18,
                color: _hovered ? hoverColor : AppColors.darkGrey,
              ),
              const SizedBox(
                width: 14,
              ),
              Text(
                widget.title,
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: _hovered ? hoverColor : AppColors.darkGrey,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
