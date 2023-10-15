import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Feedback;
import 'package:industria/core/constants/colors.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/feedback/feedback.dart';

class ViewUserFeedback extends StatefulWidget {
  final Feedback feedback;

  const ViewUserFeedback({Key? key, required this.feedback}) : super(key: key);

  @override
  State<ViewUserFeedback> createState() => _ViewUserFeedbackState();
}

class _ViewUserFeedbackState extends State<ViewUserFeedback> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 800),
        child: Column(
          children: [
            const SizedBox(
              height: 26,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Feedback",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${DateFormat.Hm().format(widget.feedback.createdAt)} | ${DateFormat.yMMMMd().format(widget.feedback.createdAt)}',
                  style: const TextStyle(fontSize: 14),
                )
              ],
            ),
            const SizedBox(
              height: 19,
            ),
            IntrinsicHeight(
              child: Container(
                height: MediaQuery.of(context).size.height/2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    "From: ",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "${widget.feedback.firstname} ${widget.feedback.lastname}",
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Company: ",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    widget.feedback.companyName,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Phone: ",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    widget.feedback.phoneNumber,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 21,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: AppColors.lightGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 30, left: 30, bottom: 40,top: 22),
                      child: Text(
                        widget.feedback.description,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
