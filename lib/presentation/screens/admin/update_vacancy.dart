import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:industria/app/router.dart';
import 'package:industria/core/constants/colors.dart';
import 'package:industria/core/enums/currency.dart';
import 'package:industria/core/enums/job_areas.dart';
import 'package:industria/core/enums/job_types.dart';
import 'package:industria/core/utils/toast.dart';
import 'package:industria/core/validator/field_validator.dart';
import 'package:industria/domain/entities/vacancy/vacancy.dart';
import 'package:industria/presentation/bloc/companies/companies_cubit.dart';
import 'package:industria/presentation/bloc/vacancies_feature/admin_update_vacancy/admin_update_vacancy_bloc.dart';
import 'package:industria/presentation/bloc/vacancies_feature/admin_view_vacancy/admin_view_vacancy_cubit.dart';
import 'package:industria/presentation/widgets/app_elevated_button.dart';
import 'package:industria/presentation/widgets/custom_text_form_field.dart';
import 'package:industria/presentation/widgets/dropdown_text_form_field.dart';
import '../../../core/enums/period.dart';
import '../../../core/services/service_locator.dart';
import '../../../core/utils/route_value.dart';
import '../../../domain/entities/company/company.dart';
import '../../../domain/repositories/admin_vacancy/admin_vacancy_repository_contract.dart';
import '../../bloc/vacancies_feature/admin_vacancy_list/admin_vacancy_list_bloc.dart';
import '../../widgets/custom_dropdown_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UpdateVacancy extends StatefulWidget {
  const UpdateVacancy({Key? key}) : super(key: key);

  @override
  State<UpdateVacancy> createState() => _UpdateVacancyState();
}

class _UpdateVacancyState extends State<UpdateVacancy> {
  JobTypes? dropdownJobType;
  JobAreas? dropdownJobArea;
  Period? dropdownPeriod;
  Currency? dropdownCurrency;
  Company? dropdownCompany;
  String? id;
  final List<TextEditingController> _questionControllers = [];

  final AdminViewVacancyCubit _adminViewVacancyCubit = AdminViewVacancyCubit(adminVacancyRepository: sl<AdminVacancyRepository>());

  final List<FocusNode> _questionNodes = [];
  int _counter = 0;
  final _titleNode = FocusNode();

  final _salaryNode = FocusNode();

  final _locationNode = FocusNode();

  final _descriptionNode = FocusNode();

  final _cityNode = FocusNode();

  TextEditingController? _titleController;
  TextEditingController? _salaryController;

  TextEditingController? _locationController;

  TextEditingController? _descriptionController;

  TextEditingController? _companyController;

  TextEditingController? _cityController;

  final _formKey = GlobalKey<FormState>();

  final _adminUpdateVacancyBloc = AdminUpdateVacancyBloc(
      adminVacancyRepository: sl<AdminVacancyRepository>());

  void _addTextField([String? text]) {
    setState(() {
      _questionControllers.add(TextEditingController(text: text));
      _questionNodes.add(FocusNode());
      _counter++;
    });
  }

  void _removeTextField(int index) {
    setState(() {
      _questionControllers.removeAt(index);
      _questionNodes.removeAt(index);
      _counter--;
    });
  }

  final _companiesCubit =
  CompaniesCubit(adminVacancyRepository: sl<AdminVacancyRepository>());

  @override
  void initState() {
    super.initState();
    _companiesCubit.fetchCompanies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final paramValue = routeValue(context, "id");
      if(paramValue != null){
        _adminViewVacancyCubit.fetchVacancyById(paramValue);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdminViewVacancyCubit, Vacancy?>(
      listener: (context,state){
        if(state != null){
          _titleController = TextEditingController(text: state.title);
          _salaryController = TextEditingController(text: state.salary.replaceAll(RegExp(r'[^0-9]'),''));
          _locationController = TextEditingController(text: state.location);
          _descriptionController = TextEditingController(text: state.description);
          _companyController = TextEditingController(text: state.company.name);
          _cityController = TextEditingController(text: state.city);
          id = state.id;
          dropdownCompany = state.company;
          dropdownJobArea = JobAreas.values.where((e) => e.text == state.area).firstOrNull;
          dropdownJobType = JobTypes.values.where((e) => e.value == state.jobType).firstOrNull;
          dropdownPeriod = Period.values.where((e) => state.salary.toLowerCase().contains(e.text.toLowerCase())).firstOrNull;
          dropdownCurrency = Currency.values.where((e) => state.salary.toLowerCase().contains(e.text.toLowerCase())).firstOrNull;
          for(var question in state.questions){
            _addTextField(question);
          }
        }
      },
      bloc: _adminViewVacancyCubit,
      builder: (context,state) => state == null ? Center(child: CircularProgressIndicator(),) : BlocBuilder<CompaniesCubit, List<Company>?>(
        bloc: _companiesCubit,
        builder: (context, state) => state == null
            ? Center(
          child: CircularProgressIndicator(),
        )
            : BlocListener<AdminUpdateVacancyBloc, AdminUpdateVacancyState>(
          bloc: _adminUpdateVacancyBloc,
          listener: (context, state) {
            state.map(
                initial: (_) {},
                loading: (_) {
                  showProgressSnackBar(context);
                },
                success: (_) {
                  showSuccessSnackBar(
                      context, "Updated vacancy successfully!");
                  context.read<AdminVacancyListBloc>().add(
                      const AdminVacancyListEvent.fetchData(
                          page: 0, elementsPerPage: 5));
                  context.go("/admin/vacancies");
                },
                fail: (_) {
                  showErrorSnackBar(context, "Failed to update vacancy!");
                });
          },
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: LayoutBuilder(
                  builder: (context, constraints) => Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.vacancy,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " / ${AppLocalizations.of(context)!.update}",
                           style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 37,
                      ),
                      IntrinsicHeight(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 36),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: CustomTextFormField(
                                              focusNode: _titleNode,
                                              textController:
                                              _titleController!,
                                              labelText: '${AppLocalizations.of(context)!.title}*',
                                              textInputType:
                                              TextInputType.name,
                                              validator: Validator.validate,
                                              isSavePressed: true,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Expanded(
                                            child: CustomDropdownField<
                                                JobTypes>(
                                              items:
                                              JobTypes.values.toList(),
                                              selectedItem: dropdownJobType,
                                              onChanged: (value) {
                                                setState(() {
                                                  dropdownJobType = value!;
                                                });
                                              },
                                              displayFunction: (job) {
                                                return job.value;
                                              },
                                              hint: '${AppLocalizations.of(context)!.jobType}*',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomTextFormField(
                                            focusNode: _salaryNode,
                                            textController:
                                            _salaryController!,
                                            labelText: '${AppLocalizations.of(context)!.salary}*',
                                            textInputType:
                                            TextInputType.number,
                                            validator:
                                            Validator.validateNumber,
                                            isSavePressed: true,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 37,
                                        ),
                                        Expanded(
                                          child:
                                          CustomDropdownField<Currency>(
                                            items: Currency.values.toList(),
                                            selectedItem: dropdownCurrency,
                                            onChanged: (value) {
                                              setState(() {
                                                dropdownCurrency = value!;
                                              });
                                            },
                                            displayFunction: (cur) {
                                              return cur.text;
                                            },
                                            hint: '${AppLocalizations.of(context)!.currency}*',
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 19,
                                        ),
                                        Expanded(
                                          child:
                                          CustomDropdownField<Period>(
                                            items: Period.values.toList(),
                                            selectedItem: dropdownPeriod,
                                            onChanged: (value) {
                                              setState(() {
                                                dropdownPeriod = value!;
                                              });
                                            },
                                            displayFunction: (job) {
                                              return job.text;
                                            },
                                            hint: '${AppLocalizations.of(context)!.period}*',
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15.0),
                                      child: DropdownTextFormField(
                                        width: constraints.maxWidth - 72,
                                        variants: state
                                            .map((e) => e.name)
                                            .toList(),
                                        controller: _companyController!,
                                        isSavePressed: false,
                                        hintText: '${AppLocalizations.of(context)!.companyName}*',
                                        onChanged: (value) {
                                          setState(() {
                                            dropdownCompany = state
                                                .where(
                                                    (e) => e.name == value)
                                                .firstOrNull;
                                          });
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 15.0),
                                      child: CustomDropdownField<JobAreas>(
                                        items: JobAreas.elements.toList(),
                                        selectedItem: dropdownJobArea,
                                        onChanged: (value) {
                                          setState(() {
                                            dropdownJobArea = value!;
                                          });
                                        },
                                        displayFunction: (area) {
                                          return area.text;
                                        },
                                        hint: '${AppLocalizations.of(context)!.area}*',
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15.0),
                                      child: CustomTextFormField(
                                        focusNode: _cityNode,
                                        textController: _cityController!,
                                        labelText: '${AppLocalizations.of(context)!.city}*',
                                        textInputType: TextInputType.name,
                                        validator: Validator.validate,
                                        isSavePressed: true,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15.0),
                                      child: CustomTextFormField(
                                        focusNode: _locationNode,
                                        textController: _locationController!,
                                        labelText: '${AppLocalizations.of(context)!.location}*',
                                        textInputType: TextInputType.name,
                                        validator: Validator.validate,
                                        isSavePressed: true,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15.0),
                                      child: CustomTextFormField(
                                        height: 166,
                                        maxLines: 15,
                                        focusNode: _descriptionNode,
                                        textController:
                                        _descriptionController!,
                                        labelText: '${AppLocalizations.of(context)!.description}*',
                                        textInputType:
                                        TextInputType.multiline,
                                        validator: Validator.validate,
                                        isSavePressed: true,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: SizedBox(
                                        width: 150,
                                        height: 42,
                                        child: AppElevatedButton(
                                          text: AppLocalizations.of(context)!.questions,
                                          verticalPadding: 0,
                                          textStyle: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.darkGrey),
                                          prefixIcon: const Icon(
                                            FontAwesomeIcons.plus,
                                            color: AppColors.darkGrey,
                                            size: 12,
                                          ),
                                          color: Colors.white,
                                          borderColor: AppColors.lightGrey,
                                          onPressed: () {
                                            _addTextField();
                                          },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 300,
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: _counter,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding:
                                              const EdgeInsets.only(
                                                  bottom: 30.0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child:
                                                    CustomTextFormField(
                                                      focusNode:
                                                      _questionNodes[
                                                      index],
                                                      textController:
                                                      _questionControllers[
                                                      index],
                                                      labelText:
                                                      '${AppLocalizations.of(context)!.question}*',
                                                      textInputType:
                                                      TextInputType
                                                          .text,
                                                      validator: (v) {},
                                                      isSavePressed: true,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  SizedBox(
                                                    width: 63,
                                                    height: 38,
                                                    child:
                                                    AppElevatedButton(
                                                      text: '-',
                                                      verticalPadding: 0,
                                                      textStyle:
                                                      const TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                          FontWeight
                                                              .w400,
                                                          color: AppColors
                                                              .darkGrey),
                                                      color: Colors.white,
                                                      borderColor: AppColors
                                                          .lightGrey,
                                                      onPressed: () {
                                                        _removeTextField(
                                                            index);
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    AppElevatedButton(
                                      text: AppLocalizations.of(context)!.save,
                                      onPressed: () {
                                        if (!_formKey.currentState!
                                            .validate()) return;
                                        if (dropdownCompany == null) {
                                          showErrorSnackBar(context,
                                              "You haven't selected a company");
                                          return;
                                        }
                                        final title = _titleController!.text;
                                        final salary =
                                            _salaryController!.text;
                                        final location =
                                            _locationController!.text;
                                        final description =
                                            _descriptionController!.text;
                                        final city = _cityController!.text;
                                        final questions =
                                        _questionControllers
                                            .map((e) => e.text)
                                            .where((e) => e.isNotEmpty)
                                            .toList();

                                        _adminUpdateVacancyBloc.add(
                                            AdminUpdateVacancyEvent
                                                .updateVacancy(
                                                id: id!,
                                                title: title,
                                                company:
                                                dropdownCompany!,
                                                type: dropdownJobType
                                                    !.value,
                                                salary: salary,
                                                currency:
                                                dropdownCurrency
                                                    !.text,
                                                period:
                                                dropdownPeriod!.text,
                                                location: location,
                                                area: dropdownJobArea
                                                    !.text,
                                                city: city,
                                                description:
                                                description,
                                                questions: questions));

                                        // _adminCreateEmployeeBloc.add(
                                        //     AdminCreateEmployeeEvent.createEmployee(
                                        //         email: email,
                                        //         password: password,
                                        //         firstname: firstname,
                                        //         lastname: lastname,
                                        //         phoneNumber: phoneNumber,
                                        //         role: role,
                                        //         dateOfBirth: _dateOfBirth!,
                                        //         worksSince: _worksSince!,
                                        //         imgFilename: _photoFileName!,
                                        //         imgBytes: _photoBytes!));
                                      },
                                      verticalPadding: 10,
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _salaryNode.dispose();
    _locationNode.dispose();
    _descriptionNode.dispose();
    _cityNode.dispose();
    _salaryController?.dispose();
    _locationController?.dispose();
    _descriptionController?.dispose();
    _companyController?.dispose();
    _cityController?.dispose();
    for (var controller in _questionControllers) {
      controller.dispose();
    }
    for (var focusNode in _questionNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }
}
