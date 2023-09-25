import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:industria/presentation/widgets/bold_text_widget.dart';
import 'package:industria/presentation/widgets/firebase_image.dart';
import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import 'app_elevated_button.dart';

class JobCard extends StatefulWidget {
  final String icon;
  final String date;
  final String vacancy;
  final String address;
  final String description;
  final String salary;
  final Function() goToDescription;

  const JobCard({
    super.key,
    required this.icon,
    required this.date,
    required this.vacancy,
    required this.address,
    required this.description,
    required this.salary,
    required this.goToDescription,
  });

  @override
  State<JobCard> createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
  bool isHoveredButton = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_){
        setState(() {
          isHoveredButton = true;
        });
      },
      onExit: (_){
        setState(() {
          isHoveredButton = false;
        });
      },
      child: GestureDetector(
        onTap: () {
          widget.goToDescription();
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: isHoveredButton ? Color.lerp(Colors.white, Colors.black, 0.01) : Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Color(0xFFEDEDED).withOpacity(0.6)
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(1, 1),
                color: Colors.black.withOpacity(0.05),
                blurRadius: 2,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 22.0, left: 27, right: 27, bottom: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //TODO: change to Image.network when use real data from api
                    FirebaseImage(widget.icon),
                    Text(
                      widget.date,
                      style: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.darkGrey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  widget.vacancy,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black),
                ),
                Text(
                  widget.address,
                  style: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 58,
                  child: BoldTextWidget(
                    text: widget.description,
                    style: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Text(
                  widget.salary,
                  style: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: AppColors.mainDarkAccent),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
