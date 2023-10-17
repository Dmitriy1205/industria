import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:industria/core/constants/colors.dart';

class ViewVacancy extends StatefulWidget {
  const ViewVacancy({
    Key? key,
  }) : super(key: key);

  @override
  State<ViewVacancy> createState() => _ViewVacancyState();
}

class _ViewVacancyState extends State<ViewVacancy> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1100),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 26,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 11,
                  ),
                  Text(
                    "Vacancy",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " / View",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                height: 34,
              ),
              IntrinsicHeight(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Salary',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.darkGrey),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  '60000 \$ / year',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 106,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Type',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.darkGrey),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'Temporary',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.darkGrey),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Germany, St',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Description',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.darkGrey),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              '''We are the Beverly Hills Company! One of the leading companies in the Ukrainian market, which is engaged in setting up
targeted and contextual media advertising. We have been operating for more than 4 years, and even in war conditions we
actively continue our work, develop and expand. Now we earn to spend money not only on ourselves, but also on good
causes, we help the Armed Forces and people who need it.  Due to staff expansion, we are looking for an active and proactive UI/UX DESIGNER)

Who we are looking for: - A generator of ideas for our content, which is always in search of something new and unusual; - A specialist who is not afraid to perform interesting and non-standard tasks; - Professional in creating creative designs for mobile applications; - A candidate with experience in Adobe Photoshop, Figma or similar photo editors; - Competent, proactive and creative person; - Knowledge of any foreign languages ​​will be a plus.''',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Questions',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.darkGrey),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              'What programming languages ​​do you use?',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 59,
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: AppColors.lightGrey,
                        ),
                        const SizedBox(
                          height: 19,
                        ),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Vacancy',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.darkGrey),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Text(
                                  'UI/UX Designer',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.mainAccent),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Company',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.darkGrey),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Text(
                                  'Google',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.mainAccent),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              '14:33 | January 20, 2023',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
