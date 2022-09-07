import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../domain/core/config/injection.dart';
import '../../domain/core/constants/asset_constant.dart';
import '../../domain/core/constants/string_constants.dart';
import '../../domain/core/services/navigation_service/navigation_service.dart';
import '../../domain/core/services/navigation_service/routers/route_names.dart';
import '../core/widgets/custom_textfield.dart';
import '../core/widgets/custom_textfield_normal.dart';

class CreateProfileScreen extends StatelessWidget {
  const CreateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: TextButton.icon(
            onPressed: () {
              navigator<NavigationService>().goBack();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
            label: const Text(''),
          ),
          title: Text(
            AuthConstants.createProfile,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.primary,
                fontSize: 14.5.sp),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.h),
            // child: Form(
            //   key: state.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    AuthConstants.completeProfileDetails,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 2.6.h),
                Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Colors.black,
                            spreadRadius: -3)
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15.w,
                      child: Stack(
                        children: [
                          Positioned(
                              bottom: 3.w,
                              right: 2.w,
                              child: SvgPicture.asset(
                                AssetConstant.editProfile,
                                width: 5.w,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3.h),

                CustomTextFieldNormal(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'First Name Required';
                    }

                    return null;
                  },
                  // errorText: state.errorFullName.isNotEmpty
                  //     ? state.errorFullName
                  //     : null,
                  // controller: state.fullNameController,
                  // prefixIcon: const Icon(Icons.person, color: Colors.green),
                  // height: 65,
                  labelText: AuthConstants.firstName,
                  hintText: AuthConstants.hintFirstName,
                ),

                CustomTextFieldNormal(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Last Name Required';
                    }

                    return null;
                  },
                  // errorText: state.errorFullName.isNotEmpty
                  //     ? state.errorFullName
                  //     : null,
                  // controller: state.fullNameController,
                  // prefixIcon: const Icon(Icons.person, color: Colors.green),
                  // height: 65,
                  labelText: AuthConstants.lastName,
                  hintText: AuthConstants.hintLastName,
                ),

                CustomTextFieldNormal(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Required';
                    }

                    return null;
                  },
                  // errorText: state.errorFullName.isNotEmpty
                  //     ? state.errorFullName
                  //     : null,
                  // controller: state.fullNameController,
                  // prefixIcon: const Icon(Icons.person, color: Colors.green),
                  // height: 65,
                  labelText: AuthConstants.reference,
                  hintText: AuthConstants.hintreference,
                ),

                CustomTextFieldNormal(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Mobile Number Required';
                      } else if (value.length < 10) {
                        return 'Incorrect Mobile Number';
                      }

                      return null;
                    },
                    //controller: state.confirmPasswordController,
                    hintText: AuthConstants.hintMobileNumber,
                    labelText: AuthConstants.mobileNumber),

                CustomTextFieldNormal(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email Required';
                    } else if (!EmailValidator.validate(value)) {
                      return 'Invalid Email';
                    }

                    return null;
                  },
                  //controller: state.userEmailController,
                  hintText: AuthConstants.hintEmail,
                  labelText: AuthConstants.emailAddress,
                ),

                SizedBox(height: 2.8.h),
                // state.isLoading
                //     ? const Center(
                //         child: CircularProgressIndicator(
                //           color: Colors.red,
                //         ),
                //       )
                //     :
                ElevatedButton(
                  onPressed: () {
                    navigator<NavigationService>().navigateTo(CoreRoute.home);
                    //   FocusScope.of(context).unfocus();

                    //   if (state.formKey.currentState!.validate()) {
                    //     // print('sign up success');
                    //     context
                    //         .read<SignupBloc>()
                    //         .add(const SignupEvent.onRegisterPressed());
                    //   } else {
                    //     // print('sign up failed');
                    //   }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.primary,
                    onPrimary: Colors.white,
                    shadowColor: const Color.fromRGBO(4, 109, 222, 1),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    minimumSize: const Size(400, 50),
                  ),
                  child: const Text(AuthConstants.done),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
