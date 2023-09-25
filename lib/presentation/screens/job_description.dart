import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:industria/core/extensions/time.dart';
import 'package:industria/domain/entities/job_offer/job_offer.dart';
import 'package:industria/presentation/widgets/bold_text_widget.dart';

import '../../app/router.dart';
import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../widgets/footer.dart';

class JobDescription extends StatefulWidget {
  final JobOffer job;
  const JobDescription({super.key, required this.job});

  @override
  State<JobDescription> createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  bool isPassObscure = true;
  bool isHoveredButton = false;
  bool isHoveredEmail = false;
  bool isHoveredPass = false;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 70.0, left: 280, right: 260),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          router.go('/jobs');
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios_new,
                              color: AppColors.mainAccent,
                              size: 14,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Text(
                              'Back to jobs',
                              style: AppTheme.themeData.textTheme.titleMedium!
                                  .copyWith(
                                      color: AppColors.mainAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(widget.job.title, style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w600, fontSize: 32),),
                    Text(widget.job.jobType, style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w600, fontSize: 18),),
                    const SizedBox(
                      height: 14,
                    ),
                    _iconTextTile(FontAwesomeIcons.solidBuilding, widget.job.companyName),
                    SizedBox(height: 12,),
                    _iconTextTile(FontAwesomeIcons.locationArrow, widget.job.location),
                    SizedBox(height: 12,),
                    _iconTextTile(FontAwesomeIcons.moneyBill, widget.job.salary),
                    SizedBox(height: 12,),
                    _iconTextTile(FontAwesomeIcons.calendarWeek, getTimeAgo(widget.job.createdAt)),
                    SizedBox(height: 30,),
                    Text("Job description", style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 24),),
                    SizedBox(height: 18,),
                    BoldTextWidget(text: widget.job.description, style: TextStyle(),),
                    SizedBox(height: 60,),
                  ],
                ),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget _iconTextTile(IconData icon, String text){
    return Row(
      children: [
        SizedBox(
            width: 20,
            height: 22,
            child: Icon(icon, size: 20, color: AppColors.mainDarkAccent,)),
        SizedBox(width: 14,),
        Text(text, style: TextStyle(fontSize: 14),)
      ],
    );
  }
}
