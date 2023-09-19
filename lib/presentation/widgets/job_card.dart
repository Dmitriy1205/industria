import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
      child: GestureDetector(
        onTap: () {
          widget.goToDescription();
        },
        child: Container(
          width: 289,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                offset: Offset(6, 6),
                color: AppColors.lightGrey,
                spreadRadius: 4,
                blurRadius: 7,
              ),
              BoxShadow(
                offset: Offset(-3, -3),
                blurRadius: 4,
                spreadRadius: 2,
                color: AppColors.lightGrey,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 22.0, left: 27, right: 21, bottom: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //TODO: change to Image.network when use real data from api
                    Image.asset(
                      widget.icon,
                      scale: 1.5,
                    ),
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
                  height: 34,
                ),
                SizedBox(
                  height: 50,
                  child: Expanded(
                    child: Text(
                      widget.vacancy,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.address,
                  style: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 6,
                ),
                SizedBox(
                  height: 58,
                  child: Text(
                    widget.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.themeData.textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.darkGrey),
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
                const SizedBox(
                  height: 20,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onEnter: (_) {
                    setState(() {
                      isHoveredButton = !isHoveredButton;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHoveredButton = !isHoveredButton;
                    });
                  },
                  child: AppElevatedButton(
                    text: AppLocalizations.of(context)!.apply,
                    color: isHoveredButton
                        ? AppColors.mainDarkAccent
                        : AppColors.mainAccent,
                    textStyle: AppTheme.themeData.textTheme.labelSmall!
                        .copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Colors.white),
                    onPressed: () {},
                    verticalPadding: 8,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
