import 'package:flutter/material.dart';

import '../../app/router.dart';
import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';
import '../widgets/footer.dart';

class JobDescription extends StatefulWidget {
  const JobDescription({super.key});

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
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 280, right: 260),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          router.go('/jobs');
                        },
                        child: Row(
                          children: [
                            const RotatedBox(
                                quarterTurns: 10,
                                child: Icon(
                                  Icons.arrow_right_alt_sharp,
                                  color: AppColors.mainAccent,
                                  size: 30,
                                )),
                            const SizedBox(
                              width: 18,
                            ),
                            Text(
                              'Back to jobs',
                              style: AppTheme.themeData.textTheme.titleLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.mainAccent),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    color: AppColors.mainAccent,
                    height: 19,
                  ),
                  const SizedBox(
                    height: 81,
                  ),
                ],
              ),
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
