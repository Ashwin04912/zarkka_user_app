import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailme/presentation/SavedAddress/saved_address_screen.dart';
import '../../application/AddAddress/add_address_bloc.dart';

class ScreenEnterCompleteAddress extends StatelessWidget {
  const ScreenEnterCompleteAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController contactController = TextEditingController();
    final TextEditingController pincodeController = TextEditingController();
    final TextEditingController flatController = TextEditingController();
    final TextEditingController areaController = TextEditingController();
    final TextEditingController landmarkController = TextEditingController();
    String type = "home";

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Enter complete address',
            style: TextStyle(
              color: Colors.white,
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
              state.successOrfailure.fold(() {}, (some) {
                some.fold((f) {
                  final message = f.maybeWhen(
                    validationFailure: () =>
                        "Enter correct datas, please recheck",
                    userNotFound: () => "Credentials..Login again and check",
                    networkFailure: () => "Network Issue!! Try Again",
                    orElse: () => "some error occured",
                  );
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(message)));
                }, (s) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Address Added successfully...')));
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) =>
                            const ScreenSavedAddress()),
                    (route) => false,
                  );
                });
              });
            },
            builder: (context, state) {
               if (state.isSubmiting) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: LoadingAnimationWidget.staggeredDotsWave(
                        color: Colors.white,
                        size: 200,
                      ),
                    ),
                  ],
                );
              }
              return Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(),
                      const Text(
                        'Save address as *',
                        style: TextStyle(
                          color: Colors.white,
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
                                  type = "home";
                                  BlocProvider.of<AddAddressBloc>(context)
                                      .add(const AddAddressEvent.homePressed());
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
                                            : Colors.white,
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
                                            : Colors.white,
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
                                  type = "work";
                                  BlocProvider.of<AddAddressBloc>(context)
                                      .add(const AddAddressEvent.workPressed());
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
                                            : Colors.white,
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
                                            : Colors.white,
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
                                  type = "others";
                                  BlocProvider.of<AddAddressBloc>(context).add(
                                      const AddAddressEvent.othersPressed());
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
                                            : Colors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Others',
                                      style: TextStyle(
                                        color: state.isOthers
                                            ? Colors.blue
                                            : Colors.white,
                                        fontSize: 13,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                        height: 0.09,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            ]
                          
                        
                      ),
                      const SizedBox(height: 25,),
                      TextFormField(
                        controller: nameController,
                        style: const TextStyle(
                            color: Colors.white, fontFamily: 'Raleway'),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          labelText: "Name",
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
                      SizedBox(height: 20.h),
                      TextFormField(
                        controller: contactController,
                        maxLength: 10,
                        keyboardType: TextInputType.phone,
                        style: const TextStyle(
                            color: Colors.white, fontFamily: 'Raleway'),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          counterText: '',
                          labelText: "Contact Number",
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
                      SizedBox(height: 20.h),
                      TextFormField(
                        controller: pincodeController,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                            color: Colors.white, fontFamily: 'Raleway'),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          labelText: "Pincode",
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
                      SizedBox(height: 20.h),
                      TextFormField(
                        controller: flatController,
                        style: const TextStyle(
                            color: Colors.white, fontFamily: 'Raleway'),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          labelText: "Flat/House no/Floor/Building",
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
                      SizedBox(height: 20.h),
                      TextFormField(
                        controller: areaController,
                        style: const TextStyle(
                            color: Colors.white, fontFamily: 'Raleway'),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          labelText: "Area/Sector/Locality",
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
                      SizedBox(height: 20.h),
                      TextFormField(
                        controller: landmarkController,
                        style: const TextStyle(
                            color: Colors.white, fontFamily: 'Raleway'),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          labelText: "Nearby landmark (optional)",
                          labelStyle:
                              const TextStyle(color: Colors.grey, fontSize: 10),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(height: 40.h),
                      SizedBox(
                        height: 32.h,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (formKey.currentState?.validate() ?? false) {
                              final SharedPreferences pref =
                                  await SharedPreferences.getInstance();
                              var token = pref.getString('token');
                              debugPrint(type);
                              BlocProvider.of<AddAddressBloc>(context).add(
                                AddAddressEvent.submitPressed(
                                  name: nameController.text,
                                  contact: contactController.text,
                                  pinCode: pincodeController.text,
                                  flat: flatController.text,
                                  area: areaController.text,
                                  landmark: landmarkController.text,
                                  token: token ?? '',
                                  type: type,
                                ),
                              );
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all<Color>(Colors.white),
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
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ));
            },
          ),
        )));
  }
}
