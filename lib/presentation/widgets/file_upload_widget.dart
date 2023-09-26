import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/domain/entities/job_application_documents/job_application_documents.dart';

class FileUploadWidget extends StatefulWidget {
  final IconData icon;
  final String hint;
  final List<String> pickedFilesNames;
  final Function(List<Uint8List> pickedBytes) onPick;
  final bool singlePick;
  const FileUploadWidget({Key? key, required this.icon, required this.hint, required this.pickedFilesNames, required this.onPick, this.singlePick = false}) : super(key: key);

  @override
  State<FileUploadWidget> createState() => _FileUploadWidgetState();
}

class _FileUploadWidgetState extends State<FileUploadWidget> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
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
      child: GestureDetector(
        onTap: () async{
          final files = await FilePicker.platform.pickFiles(allowMultiple: !widget.singlePick);
          if(files == null){
            return;
          }
          widget.onPick.call(files.files.map((e) => e.bytes!).toList());
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightGrey,),
            color: _hovered ? AppColors.lightGrey.withOpacity(0.4) : Colors.transparent,
            borderRadius: BorderRadius.circular(16)
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(widget.icon, size: 25, color: AppColors.darkGrey,),
                SizedBox(height: 9,),
                Text(widget.hint, style: Theme.of(context).textTheme.labelSmall,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
