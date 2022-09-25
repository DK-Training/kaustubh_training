import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kaustubh_training/application/auth/new_task/new_task_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../domain/core/config/app_config.dart';
import '../../../domain/core/config/injection.dart';
import '../../../domain/core/constants/asset_constant.dart';
import '../../../domain/core/constants/string_constants.dart';
import '../../../domain/core/services/navigation_service/navigation_service.dart';
import '../../../domain/core/services/navigation_service/routers/route_names.dart';
import '../../core/widgets/custom_textfield.dart';
// import '../../domain/core/services/navigation_service/navigation_service.dart';
// import '../../domain/core/services/navigation_service/routers/route_names.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appStateNotifier = Provider.of<AppStateNotifier>(context);

    return BlocProvider(
      create: (BuildContext context) => NewTaskBloc(
        NewTaskState.initial(appStateNotifier: appStateNotifier),
      ),
      child: const LoginScreenConsumer(),
    );
  }
}

class LoginScreenConsumer extends StatelessWidget {
  const LoginScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewTaskBloc, NewTaskState>(listener: (context, state) {
      if (state.isSuccessful) {
        navigator<NavigationService>().goBack();
      } else if (state.isFailed) {
        debugPrint('failed');
        if (state.errorMessage.isNotEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errorMessage),
            duration: const Duration(seconds: 3),
          ));
          // context.read<NewTaskBloc>().add(NewTaskEvent.emitFromAnywhere(
          //     state: state.copyWith(isFailed: false)));
        }
      }
    }, builder: (context, state) {
      return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            titleSpacing: 8.w,
            title: Text(
              AuthConstants.newTaskTitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 14.5.sp),
            ),
            actions: [
              SizedBox(
                width: 8.w,
              )
            ],
          ),
          body: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 5.w),
                  child: Form(
                      key: state.formKey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Input Title';
                                }

                                return null;
                              },
                              controller: state.titleController,
                              inputWithLabel: true,

                              hintText: AuthConstants.hintTaskTitle,
                              // prefixIcon: const Icon(
                              //   Icons.mail_outline_rounded,
                              //   color: Colors.green,
                            ),
                            CustomTextField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Description Required';
                                }

                                return null;
                              },
                              controller: state.descriptionController,

                              hintText: AuthConstants.hintTaskDescription,
                              // obscureText: true,
                              // prefixIcon:
                              //     const Icon(Icons.lock_outline, color: Colors.green),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  if (state.formKey.currentState!.validate()) {
                                    context.read<NewTaskBloc>().add(
                                        const NewTaskEvent.onAddTaskPressed());
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      Theme.of(context).colorScheme.primary,
                                  onPrimary: Colors.white,
                                  shadowColor:
                                      const Color.fromRGBO(4, 109, 222, 1),
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(16.0)),
                                  minimumSize: const Size(400, 50),
                                ),
                                child: Text(AuthConstants.addTask,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor))),
                          ])))));
    });
  }
}
