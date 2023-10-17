import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/extensions/date.dart';
import 'package:industria/core/utils/download_storage_file.dart';
import 'package:industria/core/utils/route_value.dart';
import 'package:industria/core/utils/toast.dart';
import 'package:industria/domain/entities/job_application/job_application.dart';
import 'package:industria/presentation/bloc/job_application_feature/admin_job_applications/admin_job_applications_bloc.dart';
import 'package:industria/presentation/bloc/job_application_feature/view_job_application/view_job_application_bloc.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';

import '../../../core/services/service_locator.dart';
import '../../../core/themes/theme.dart';
import '../../../domain/repositories/job_application/job_application_repository_contract.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../bloc/localization/localization_bloc.dart';

class ViewJobApplication extends StatefulWidget{
  const ViewJobApplication({Key? key})
      : super(key: key);

  @override
  State<ViewJobApplication> createState() => _ViewJobApplicationState();
}

class _ViewJobApplicationState extends State<ViewJobApplication>{
  final _viewJobApplicationBloc = ViewJobApplicationBloc(jobApplicationRepository: sl<JobApplicationRepository>());

  String? selectedStatus;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final paramValue = routeValue(context, "id");
      if(paramValue != null){
        _viewJobApplicationBloc.add(ViewJobApplicationEvent.fetchJobApplicationById(id: paramValue));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ViewJobApplicationBloc, ViewJobApplicationState>(
      listener: (context,state){
        state.maybeMap(
            loaded: (state){
              setState(() {
                selectedStatus = state.jobApplication.status;
              });
            },
            changedStatus: (state){
              context.read<AdminJobApplicationsBloc>().add(AdminJobApplicationsEvent.replaceJobApplication(id: state.jobApplication.id, jobApplication: state.jobApplication));
              showSuccessSnackBar(context, "Saved");
              context.go("/admin/job_applications");
            },
            markedAsRead: (state){
              context.read<AdminJobApplicationsBloc>().add(AdminJobApplicationsEvent.replaceJobApplication(id: state.jobApplication.id, jobApplication: state.jobApplication));
            },
            orElse: (){});
      },
      bloc: _viewJobApplicationBloc,
  builder: (context, state) {
        if(state.jobApplication == null){
          return const SizedBox.shrink();
        }
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 880),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: SizedBox(
                  height: 25,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.jobApplication,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        " / ${AppLocalizations.of(context)!.view}",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              IntrinsicHeight(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.lightGrey),
                      color: Colors.white),
                  padding: const EdgeInsets.symmetric(vertical: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 39),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _section(title: AppLocalizations.of(context)!.firstname, subtitle: state.jobApplication!.firstname),
                                _section(title: AppLocalizations.of(context)!.lastname, subtitle: state.jobApplication!.lastname),
                                _section(title: AppLocalizations.of(context)!.dateOfBirth, subtitle: state.jobApplication!.birthday.formatted),
                              ],
                            ),
                            const SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _section(title: AppLocalizations.of(context)!.citizenship, subtitle: state.jobApplication!.citizenship),
                                _section(title: AppLocalizations.of(context)!.availabilityDate, subtitle: state.jobApplication!.availableDate.formatted),
                                _section(title: AppLocalizations.of(context)!.gender, subtitle: state.jobApplication!.gender),
                              ],
                            ),
                            const SizedBox(height: 30,),
                            _section(title: AppLocalizations.of(context)!.address, subtitle: state.jobApplication!.gender),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Container(height: 1, width: double.infinity, color: AppColors.lightGrey,),
                      const SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 39),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            _section(title: AppLocalizations.of(context)!.vacancy, subtitle: state.jobApplication!.jobOfferName, link: true),
                            const SizedBox(width: 65,),
                            _section(title: AppLocalizations.of(context)!.company, subtitle: state.jobApplication!.company.name, link: true),
                            const Spacer(),
                            Text(state.jobApplication!.createdAt.formattedTextedWithTime(context.watch<LocalizationBloc>().state.locale), style: const TextStyle(fontSize: 12, color: Color(0xFF282828), fontWeight: FontWeight.w600),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(color: AppColors.lightGrey)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.solidUser, color: AppColors.darkGrey,),
                        SizedBox(height: 15,),
                        SelectionContainer.disabled(
                          child: SelectionContainer.disabled(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${AppLocalizations.of(context)!.picture} ",),
                                MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                        onTap: (){
                                          downloadStorageFile(state.jobApplication!.documents.photo);
                                        },
                                        child: Text(AppLocalizations.of(context)!.download, style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.mainAccent, decoration: TextDecoration.underline, decorationColor: AppColors.mainAccent),)))
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
                    Container(height: double.infinity, width: 1, margin: EdgeInsets.symmetric(vertical: 24), color: AppColors.lightGrey,),
                    Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.solidFileLines, color: AppColors.darkGrey,),
                        SizedBox(height: 15,),
                        SelectionContainer.disabled(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("${AppLocalizations.of(context)!.cv} ",),
                              MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                      onTap: (){
                                        downloadStorageFile(state.jobApplication!.documents.cv);
                                      },
                                      child: Text(AppLocalizations.of(context)!.download, style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.mainAccent, decoration: TextDecoration.underline, decorationColor: AppColors.mainAccent),)))
                            ],
                          ),
                        )
                      ],
                    )),
                    Container(height: double.infinity, width: 1, margin: EdgeInsets.symmetric(vertical: 24), color: AppColors.lightGrey,),
                    Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.solidFile, color: AppColors.darkGrey,),
                        SizedBox(height: 15,),
                        SelectionContainer.disabled(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("${AppLocalizations.of(context)!.certificates} ",),
                              MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                      onTap: (){

                                      },
                                      child: Text(AppLocalizations.of(context)!.download, style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.mainAccent, decoration: TextDecoration.underline, decorationColor: AppColors.mainAccent),)))
                            ],
                          ),
                        )
                      ],
                    )),
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 140,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Theme(
                          data: Theme.of(context).copyWith(
                            hoverColor: Colors.white,
                          ),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            focusColor: Colors.white,
                            icon: const Padding(
                              padding: EdgeInsets.only(left: 3.0),
                              child: Icon(
                                Icons.arrow_drop_down,
                                size: 15,
                                color: AppColors.darkGrey,
                              ),
                            ),
                            underline: SizedBox(),
                            value: selectedStatus,
                            borderRadius: BorderRadius.circular(10),
                            items: <String>[
                              'Pending',
                              'Resolved',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: AppTheme.themeData.textTheme.titleSmall!
                                      .copyWith(color: Color(0xFF575757)),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedStatus = newValue;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  SizedBox(
                      width: 160,
                      child: AppElevatedButton(onPressed: (){
                        _viewJobApplicationBloc.add(ViewJobApplicationEvent.changeStatus(id: state.jobApplication!.id, status: selectedStatus!));
                      }, text: AppLocalizations.of(context)!.save, textStyle: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal), color: Colors.white, verticalPadding: 8,)),
                ],
              ),
              const SizedBox(height: 25,),
            ],
          ),
        ),
      ),
    );
  },
);
  }

  Widget _section({required String title, required String subtitle, bool link = false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.darkGrey),),
        const SizedBox(height: 14,),
        Text(subtitle, style: TextStyle(fontSize: 14, color: link ? AppColors.mainAccent : Colors.black),),
      ],
    );
  }
}
