import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:industria/core/constants/colors.dart';

class FileUploadPickResult {
  final Uint8List bytes;
  final String filename;

  const FileUploadPickResult({
    required this.bytes,
    required this.filename,
  });
}

class FileUploadFormWidget extends FormField<List<String>> {
  final IconData icon;
  final String hint;
  final String? validationError;
  final List<String> pickedFilesNames;
  final Function(List<FileUploadPickResult> pickResults) onPick;
  final bool singlePick;
  final List<String>? allowedTypes;
  final bool mandatory;

  FileUploadFormWidget(
      {super.key, this.allowedTypes, required this.icon, this.validationError, required this.hint, required this.pickedFilesNames, required this.onPick, required this.singlePick, required this.mandatory})
      : super(
      autovalidateMode: AutovalidateMode.disabled,
      enabled: true,
      validator: (values){
        if((values == null || values.isEmpty) && mandatory){
          return validationError;
        }else{
          return null;
        }
      },
      builder: (FormFieldState<List<String>> field) {
        return UnmanagedRestorationScope(
          child: FileUploadWidget(
            allowedTypes: allowedTypes,
            icon: icon,
            hint: hint,
            pickedFilesNames: pickedFilesNames,
            onPick: (e){
              field.didChange(e.map((e) => e.filename).toList());
              onPick.call(e);
            },
            singlePick: singlePick,
            mandatory: mandatory,
            errorText: field.errorText,
          ),
        );
      }
  );

}

class FileUploadWidget extends StatefulWidget {
  final IconData icon;
  final String hint;
  final List<String> pickedFilesNames;
  final String? errorText;
  final Function(List<FileUploadPickResult> pickResults) onPick;
  final bool singlePick;
  final bool mandatory;
  final List<String>? allowedTypes;

  const FileUploadWidget({Key? key,
    required this.icon,
    required this.hint,
    required this.pickedFilesNames,
    required this.onPick,
    this.allowedTypes,
    this.singlePick = false, required this.mandatory, this.errorText})
      : super(key: key);

  @override
  State<FileUploadWidget> createState() => _FileUploadWidgetState();
}

class _FileUploadWidgetState extends State<FileUploadWidget> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) {
              setState(() {
                _hovered = true;
              });
            },
            onExit: (_) {
              setState(() {
                _hovered = false;
              });
            },
            child: GestureDetector(
              onTap: () async {

                final files = await FilePicker.platform
                    .pickFiles(allowMultiple: !widget.singlePick, allowedExtensions: widget.allowedTypes, type: widget.allowedTypes == null ? FileType.any : FileType.custom);
                if (files == null) {
                  return;
                }
                widget.onPick.call(files.files
                    .map((e) =>
                    FileUploadPickResult(bytes: e.bytes!, filename: e.name))
                    .toList());
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.lightGrey,
                    ),
                    color: _hovered
                        ? AppColors.lightGrey.withOpacity(0.4)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                    child: widget.pickedFilesNames.isEmpty
                        ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          widget.icon,
                          size: 25,
                          color: AppColors.darkGrey,
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                          widget.hint,
                          style: Theme
                              .of(context)
                              .textTheme
                              .labelSmall,
                        )
                      ],
                    )
                        : ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        itemCount: widget.pickedFilesNames.length,
                        itemBuilder: (context, i) {
                          return Text(widget.pickedFilesNames[i]);
                        })),
              ),
            ),
          ),
        ),
        widget.errorText == null ? SizedBox.shrink() : Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Text(widget.errorText!, style: TextStyle(color: Colors.red, fontSize: 12)),
        )
      ],
    );
  }
}
