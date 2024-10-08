import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:tailme/presentation/SavedAddress/saved_address_screen.dart';
import 'package:tailme/theme_util.dart';
import '../../application/AddAddress/add_address_bloc.dart';

class ScreenEnterCompleteAddress extends StatelessWidget {
  ScreenEnterCompleteAddress(
      {super.key, this.locality, this.pinCode, this.landMark});
  final String? locality;
  final String? pinCode;
  final String? landMark;

  bool _navigated = false;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThemeUtil.isDarkMode(context);
    final formKey = GlobalKey<FormState>();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController contactController = TextEditingController();
    final TextEditingController pincodeController =
        TextEditingController(text: pinCode ?? "");
    final TextEditingController flatController = TextEditingController();
    final TextEditingController areaController =
        TextEditingController(text: locality ?? "");
    final TextEditingController landmarkController =
        TextEditingController(text: landMark ?? "");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              'assets/images/back_arrow.svg',
              color: isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ),
        title: Text(
          'Enter complete address',
          style: TextStyle(
            color: isDarkMode ? Colors.white : Colors.black,
            fontSize: 16,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 15.h),
          child: BlocConsumer<AddAddressBloc, AddAddressState>(
            listener: (context, state) {
              state.addAddressSuccessOrFailureResponse.fold(
                () {},
                (either) {
                  either.fold(
                    (failure) {
                      final message = failure.maybeWhen(
                        validationFailure: () =>
                            "Enter correct data, please recheck",
                        userNotFound: () =>
                            "Credentials.. Login again and check",
                        networkFailure: () => "Network Issue!! Try Again",
                        orElse: () => "Some error occurred",
                      );
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(message)));
                    },
                    (success) {
                      if (!_navigated) {
                        _navigated = true;
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Address Added successfully...')),
                        );
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScreenSavedAddress()),
                        );
                      }
                    },
                  );
                },
              );
            },
            builder: (context, state) {
              if (state.isSubmiting) {
                return Center(
                  child: LoadingAnimationWidget.staggeredDotsWave(
                    color: Colors.blue,
                    size: 200,
                  ),
                );
              }

              return Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(),
                    Text(
                      'Save address as *',
                      style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.black,
                        fontSize: 15,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        height: 3,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<AddAddressBloc>(context).add(
                              const AddAddressEvent.homePressed(),
                            );
                          },
                          child: Container(
                            width: 65.w,
                            height: 26.h,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.80,
                                  color: state.isHome
                                      ? Colors.blue
                                      : (isDarkMode
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Home',
                                style: TextStyle(
                                  color: state.isHome
                                      ? Colors.blue
                                      : (isDarkMode
                                          ? Colors.white
                                          : Colors.black),
                                  fontSize: 13,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500,
                                  height: 0.09,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<AddAddressBloc>(context).add(
                              const AddAddressEvent.workPressed(),
                            );
                          },
                          child: Container(
                            width: 65.w,
                            height: 26.h,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.80,
                                  color: state.isWork
                                      ? Colors.blue
                                      : (isDarkMode
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Work',
                                style: TextStyle(
                                  color: state.isWork
                                      ? Colors.blue
                                      : (isDarkMode
                                          ? Colors.white
                                          : Colors.black),
                                  fontSize: 13,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500,
                                  height: 0.09,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<AddAddressBloc>(context).add(
                              const AddAddressEvent.othersPressed(),
                            );
                          },
                          child: Container(
                            width: 65.w,
                            height: 26.h,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.80,
                                  color: state.isOthers
                                      ? Colors.blue
                                      : (isDarkMode
                                          ? Colors.white
                                          : Colors.black),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Other',
                                style: TextStyle(
                                  color: state.isOthers
                                      ? Colors.blue : (isDarkMode? Colors.white : Colors.black),
                                  fontSize: 13,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500,
                                  height: 0.09,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: TextFormField(
                        controller: nameController,
                        maxLength: null,
                        keyboardType: TextInputType.text,
                        style:  TextStyle(
                            color: isDarkMode? Colors.white :Colors.black, fontFamily: 'Raleway'),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          counterText: '',
                          labelText: 'Name',
                          labelStyle:
                              const TextStyle(color: Colors.grey, fontSize: 10),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: TextFormField(
                        controller: contactController,
                        maxLength: 10,
                        keyboardType: TextInputType.phone,
                        style:  TextStyle(
                            color: isDarkMode? Colors.white :Colors.black, fontFamily: 'Raleway'),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          counterText: '',
                          labelText: 'Contact Number',
                          labelStyle:
                              const TextStyle(color: Colors.grey, fontSize: 10),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your contact number';
                          }
                          if (value.length != 10) {
                            return 'Contact number must be 10 digits';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: TextFormField(
                        controller: pincodeController,
                        maxLength: 6,
                        keyboardType: TextInputType.number,
                        style:  TextStyle(
                            color: isDarkMode? Colors.white :Colors.black, fontFamily: 'Raleway'),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          counterText: '',
                          labelText: 'Pincode',
                          labelStyle:
                              const TextStyle(color: Colors.grey, fontSize: 10),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your pincode';
                          }
                          if (value.length != 6) {
                            return 'Pincode must be 6 digits';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: TextFormField(
                        controller: flatController,
                        maxLength: null,
                        keyboardType: TextInputType.text,
                        style:  TextStyle(
                            color: isDarkMode? Colors.white :Colors.black, fontFamily: 'Raleway'),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          counterText: '',
                          labelText: 'Flat/House no/Floor/Building',
                          labelStyle:
                              const TextStyle(color: Colors.grey, fontSize: 10),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter flat/house number';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: TextFormField(
                        controller: areaController,
                        maxLength: null,
                        keyboardType: TextInputType.text,
                        style:  TextStyle(
                            color: isDarkMode? Colors.white :Colors.black, fontFamily: 'Raleway'),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          counterText: '',
                          labelText: 'Area/Sector/Locality',
                          labelStyle:
                              const TextStyle(color: Colors.grey, fontSize: 10),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter area/sector/locality';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: TextFormField(
                        controller: landmarkController,
                        maxLength: null,
                        keyboardType: TextInputType.text,
                        style:  TextStyle(
                            color: isDarkMode? Colors.white :Colors.black, fontFamily: 'Raleway'),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          counterText: '',
                          labelText: 'Nearby landmark (optional)',
                          labelStyle:
                              const TextStyle(color: Colors.grey, fontSize: 10),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      height: 32.h,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          print("$pinCode, $locality");
                          if (formKey.currentState?.validate() ?? false) {
                            BlocProvider.of<AddAddressBloc>(context).add(
                              AddAddressEvent.submitPressed(
                                name: nameController.text,
                                contact: contactController.text,
                                pinCode: pincodeController.text,
                                flat: flatController.text,
                                area: areaController.text,
                                landmark: landmarkController.text,
                                type: state.type,
                              ),
                            );
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                              const Color(0xFF0075BE)),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Save Address',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
