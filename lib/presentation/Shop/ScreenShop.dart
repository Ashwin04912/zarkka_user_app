import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailme/core/widgets/CommonButton.dart';
import 'package:tailme/core/widgets/ReusableWidgets.dart';
import 'package:tailme/domain/shop/create_order_req_model.dart';
import 'package:tailme/domain/shop/create_order_resp_model.dart';
import 'package:tailme/presentation/my_orders/screen_my_orders.dart';
import 'package:tailme/theme_util.dart';

import '../../application/shop/shop_bloc.dart';

class ScreenShop extends StatelessWidget {
  final String shopname;
  final String location;
  final String image;
  final String itemId;

  ScreenShop({
    super.key,
    required this.shopname,
    required this.location,
    required this.image,
    required this.itemId,
  });

  String? dropdownValue;

  final List<String> items = [
    "Model Garment",
    "Tailor Cunsultancy (₹100)",
    "Upload Measurements"
  ];

  List<bool> serviceType = [
    false,
    false,
  ];

  TextEditingController additionalDesignController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThemeUtil.isDarkMode(context);
    return Scaffold(
      appBar: ReusableWidgets.getAppBar(context),
      body: WillPopScope(
        onWillPop: () async {
          BlocProvider.of<ShopBloc>(context)
              .add(const ShopEvent.clearAllEvent());
          return true; // Return true to allow the pop action
        },
        child: BlocConsumer<ShopBloc, ShopState>(
          listener: (context, state) {
            state.successOrfailure.fold(() {}, (some) {
              some.fold((f) {
                  final message = f.maybeWhen(
                            validationFailure: () =>
                                "Missing required fields",
                           userNotFound: ()=>"Unauthorized access! Login and try again..",
                            orElse: () => "some error occured",
                          );
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text(message,style: TextStyle(color: Colors.red),)));
              }, (s) {
                 if (state.canNavigate) {
              // Assuming CreateOrderResponseModel is your success type
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ScreenMyOrders()),
              );
            }
              });
            });
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                          BlocProvider.of<ShopBloc>(context)
                              .add(const ShopEvent.clearAllEvent());
                        },
                        icon: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/back_arrow.svg',
                              color: isDarkMode ? Colors.white : Colors.black,
                              height: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              shopname,
                              style: TextStyle(
                                color: isDarkMode ? Colors.white : Colors.black,
                                fontSize: 24,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        height: 140,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: isDarkMode
                              ? const Color(0xFFBCAD92)
                              : Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: Image.network(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Choose one',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: isDarkMode
                                  ? const Color(0xFFA2A2A2)
                                  : const Color(0xFF363636),
                              fontSize: 12,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: isDarkMode
                                    ? Colors.transparent
                                    : Colors.black),
                            borderRadius: BorderRadius.circular(10),
                            color: isDarkMode
                                ? Colors.grey[700]
                                : Colors.transparent,
                          ),
                          width: double.infinity,
                          child: BlocBuilder<ShopBloc, ShopState>(
                            builder: (context, state) {
                              return Column(
                                children: [
                                  FormField<bool>(
                                    builder: (FormFieldState<bool> field) {
                                      return Column(
                                        children: [
                                          SizedBox(
                                            height: 50.h,
                                            child: CheckboxListTile(
                                              activeColor: Colors.black,
                                              side: BorderSide(
                                                width: 1,
                                                color: isDarkMode
                                                    ? Colors.white
                                                    : const Color(0xFF616161),
                                              ),
                                              checkColor: Colors.white,
                                              title: Text(
                                                "Alteration",
                                                style: TextStyle(
                                                  color: isDarkMode
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Raleway',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              value: state.isAlteration,
                                              onChanged: (newValue) {
                                                BlocProvider.of<ShopBloc>(
                                                        context)
                                                    .add(const ShopEvent
                                                        .alterationClickedEvent());
                                                field.didChange(
                                                    newValue); // Notify the field of state change
                                              },
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1,
                                            color: isDarkMode
                                                ? const Color.fromARGB(
                                                    255, 172, 158, 158)
                                                : Colors.black,
                                          ),
                                          SizedBox(
                                            height: 50.h,
                                            child: CheckboxListTile(
                                              activeColor: Colors.black,
                                              side: BorderSide(
                                                width: 1,
                                                color: isDarkMode
                                                    ? Colors.white
                                                    : const Color(0xFF616161),
                                              ),
                                              checkColor: Colors.white,
                                              title: Text(
                                                "Stitching",
                                                style: TextStyle(
                                                  color: isDarkMode
                                                      ? Colors.white
                                                      : Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Raleway',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .trailing,
                                              value: state.isStitching,
                                              onChanged: (newValue) {
                                                BlocProvider.of<ShopBloc>(
                                                        context)
                                                    .add(const ShopEvent
                                                        .stitchingClickedEvent());
                                                field.didChange(
                                                    newValue); // Notify the field of state change
                                              },
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                    validator: (value) {
                                      if (!state.isAlteration &&
                                          !state.isStitching) {
                                        return 'Please select at least one option';
                                      }
                                      return null;
                                    },
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Add on',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: isDarkMode
                                    ? const Color(0xFFA2A2A2)
                                    : const Color(0xFF363636),
                                fontSize: 12,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: isDarkMode
                                    ? Colors.transparent
                                    : Colors.black),
                            borderRadius: BorderRadius.circular(10),
                            color: isDarkMode
                                ? Colors.grey[700]
                                : Colors.transparent,
                          ),
                          width: double.infinity,
                          child: BlocBuilder<ShopBloc, ShopState>(
                            builder: (context, state) {
                              return Column(
                                children: [
                                  SizedBox(
                                    height: 50.h,
                                    child: CheckboxListTile(
                                      activeColor: Colors.black,
                                      side: WidgetStateBorderSide.resolveWith(
                                          (states) => BorderSide(
                                              width: 1,
                                              color: isDarkMode
                                                  ? Colors.white
                                                  : const Color(0xFF616161))),
                                      checkColor: Colors.white,
                                      title: Text(
                                        "Embroidery", // Use the title relevant to each option
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      value: state.isEmbroidary,
                                      onChanged: (value) {
                                        BlocProvider.of<ShopBloc>(context).add(
                                            ShopEvent.embroidaryClickedEvent(
                                                isChecked: value!));
                                      },
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: isDarkMode
                                        ? const Color.fromARGB(
                                            255, 172, 158, 158)
                                        : Colors.black,
                                  ),
                                  SizedBox(
                                    height: 50.h,
                                    child: CheckboxListTile(
                                      activeColor: Colors.black,
                                      side: WidgetStateBorderSide.resolveWith(
                                          (states) => BorderSide(
                                              width: 1,
                                              color: isDarkMode
                                                  ? Colors.white
                                                  : const Color(0xFF616161))),
                                      checkColor: Colors.white,
                                      title: Text(
                                        "Handwork", // Use the title relevant to each option
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      controlAffinity: ListTileControlAffinity
                                          .trailing, // Ensures the checkbox stays in front

                                      value: state.isHandWork,
                                      onChanged: (value) {
                                        BlocProvider.of<ShopBloc>(context).add(
                                            ShopEvent.handWorkClickedEvent(
                                                isChecked: value!));
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                      Text(
                        'Describe additional design',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: isDarkMode
                              ? const Color(0xFFA2A2A2)
                              : const Color(0xFF363636),
                          fontSize: 17,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          height: 2,
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/home/emergency.svg',
                            height: 20,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Text(
                            'Extra payment will be there',
                            style: TextStyle(
                              color: Color(0xFFE00000),
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isDarkMode
                                    ? Colors.transparent
                                    : Colors.black),
                            color: isDarkMode
                                ? const Color(0xFF616161)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller: additionalDesignController,
                          style: const TextStyle(color: Colors.black),
                          maxLines: 3,
                          decoration: InputDecoration(
                              hintText: "    eg : Straight Cut Salwar Suit",
                              hintStyle: TextStyle(
                                color: isDarkMode
                                    ? const Color(0x99E8E8E8)
                                    : Colors.black,
                                fontSize: 10,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                              border: null,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Upload your reference design here',
                        style: TextStyle(
                          color: isDarkMode
                              ? Colors.white
                              : const Color(0xFF030303),
                          fontSize: 8,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w500,
                          height: 4,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          BlocProvider.of<ShopBloc>(context)
                              .add(const ShopEvent.uploadButtonClickedEvent());
                        },
                        child: DottedBorder(
                          color: isDarkMode ? Colors.white : Colors.blue,
                          strokeWidth: 1,
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(10),
                          child: Container(
                            width: double.infinity,
                            height: 85,
                            decoration: ShapeDecoration(
                              color: isDarkMode
                                  ? const Color(0xFF616161)
                                  : Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: BlocBuilder<ShopBloc, ShopState>(
                              builder: (context, state) {
                                if (state.isLoaded) {
                                  return Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/images/home/upload.svg',
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.blue),
                                      // SvgPicture.asset('assets/images/home/upload.svg'),
                                      Text(
                                        state.fileName,
                                        style: TextStyle(
                                          color: isDarkMode
                                              ? Colors.white
                                              : Colors.blue,
                                          fontSize: 13,
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w500,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  );
                                }
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/images/home/upload.svg',
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.blue),
                                    Text(
                                      '  Upload image',
                                      style: TextStyle(
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.blue,
                                        fontSize: 13,
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Select from below',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: isDarkMode ? Colors.white : Colors.black,
                          fontSize: 17,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          height: 2,
                        ),
                      ),
                      BlocBuilder<ShopBloc, ShopState>(
                        builder: (context, state) {
                          // Ensure that designReference is a valid value from the items list or use null
                          String? selectedValue =
                              items.contains(state.designReference)
                                  ? state.designReference
                                  : null;

                          return DropdownButtonHideUnderline(
                            child: DropdownButtonFormField2(
                              isExpanded: true,
                              hint: Row(
                                children: [
                                  const SizedBox(width: 4),
                                  Expanded(
                                    child: Text(
                                      'Select Item',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              items: items
                                  .asMap()
                                  .map((index, String item) => MapEntry(
                                        index,
                                        DropdownMenuItem<String>(
                                          value: item,
                                          enabled: index !=
                                              items.length -
                                                  1, // Disable last item
                                          child: Text(
                                            item,
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: index == items.length - 1
                                                  ? Colors.grey
                                                  : (isDarkMode
                                                      ? Colors.white
                                                      : Colors.black),
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ))
                                  .values
                                  .toList(),
                              value:
                                  selectedValue, // Use the validated selected value
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  BlocProvider.of<ShopBloc>(context).add(
                                    ShopEvent.designReference(
                                        designReference: newValue),
                                  );
                                }
                              },
                              iconStyleData: IconStyleData(
                                iconSize: 14,
                                iconEnabledColor:
                                    isDarkMode ? Colors.white : Colors.black,
                                iconDisabledColor:
                                    isDarkMode ? Colors.white : Colors.black,
                              ),
                              buttonStyleData: ButtonStyleData(
                                height: 50,
                                width: 260,
                                padding:
                                    const EdgeInsets.only(left: 14, right: 14),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(color: Colors.black26),
                                  color: isDarkMode
                                      ? const Color(0xFF616161)
                                      : Colors.white,
                                ),
                                elevation: 1,
                              ),
                              dropdownStyleData: DropdownStyleData(
                                maxHeight: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: isDarkMode
                                      ? const Color(0xFF616161)
                                      : Colors.white,
                                ),
                                offset: const Offset(-20, 0),
                                scrollbarTheme: ScrollbarThemeData(
                                  radius: const Radius.circular(40),
                                  thickness: WidgetStateProperty.all<double>(6),
                                  thumbVisibility:
                                      WidgetStateProperty.all<bool>(true),
                                ),
                              ),
                              menuItemStyleData: const MenuItemStyleData(
                                height: 40,
                                padding: EdgeInsets.only(left: 14, right: 14),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please select an item';
                                }
                                return null;
                              },
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      BlocBuilder<ShopBloc, ShopState>(
                        builder: (context, state) {
                          if (state.isLoading) {
                            return Center(
                              child: LoadingAnimationWidget.stretchedDots(
                                size: 50,
                                color: Colors.blue,
                              ),
                            );
                          }
                          return CommonButton(
                            buttonText: "\$69 Proceed to checkout",
                            ontap: () async {
                              final SharedPreferences pref =
                                  await SharedPreferences.getInstance();
                              final token = pref.getString('token') ?? '';

                              if (_formKey.currentState?.validate() ?? false) {
                                // Perform the desired action if validation is successful

                                String designReferenceValue;
                                if (state.designReference == 'Model Garment') {
                                  designReferenceValue = 'modelGarment';
                                } else if (state.designReference ==
                                    "Tailor Cunsultancy (₹100)") {
                                  designReferenceValue = 'tailorConsultancy';
                                } else {
                                  designReferenceValue = '';
                                }

                                var model = CreateOrderReqModel(
                                    token: token,
                                    image: state.filePath,
                                    serviceDescription:
                                        additionalDesignController.text,
                                    serviceType: state.isAlteration
                                        ? "alteration"
                                        : "stiching",
                                    itemId: itemId,
                                    addons: state.addOn,
                                    designReference: designReferenceValue,
                                    measurements: '');
                                BlocProvider.of<ShopBloc>(context).add(
                                    ShopEvent.proceedToCheckoutEventPressed(
                                        orderModel: model));
                                print(
                                    'Validation passed! Proceed with the action.');
                              } else {
                                // Handle the case where validation fails
                                print(
                                    'Validation failed. Please select an item.');
                              }

                              // debugPrint(state.addOn.toList().toString());
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => const ScreenMyOrders()));
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

//
