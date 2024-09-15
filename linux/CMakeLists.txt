# Project-level configuration.
cmake_minimum_required(VERSION 3.10)
project(runner LANGUAGES CXX)

# The name of the executable created for the application. Change this to change
# the on-disk name of your application.
set(BINARY_NAME "tailme")
# The unique GTK application identifier for this application. See:
# https://wiki.gnome.org/HowDoI/ChooseApplicationID
set(APPLICATION_ID "com.example.tailme")

# Explicitly opt in to modern CMake behaviors to avoid warnings with recent
# versions of CMake.
cmake_policy(SET CMP0063 NEW)

# Load bundled libraries from the lib/ directory relative to the binary.
set(CMAKE_INSTALL_RPATH "$ORIGIN/lib")

# Root filesystem for cross-building.
if(FLUTTER_TARGET_PLATFORM_SYSROOT)
  set(CMAKE_SYSROOT ${FLUTTER_TARGET_PLATFORM_SYSROOTashwin)
  set(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOTashwin)
  set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
  set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
  set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
  set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
endif()

# Define build configuration options.
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
  set(CMAKE_BUILD_TYPE "Debug" CACHE
    STRING "Flutter build mode" FORCE)
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS
    "Debug" "Profile" "Release")
endif()

# Compilation settings that should be applied to most targets.
#
# Be cautious about adding new options here, as plugins use this function by
# default. In most cases, you should add new options to specific targets instead
# of modifying this function.
function(APPLY_STANDARD_SETTINGS TARGET)
  target_compile_features(${TARGETashwin PUBLIC cxx_std_14)
  target_compile_options(${TARGETashwin PRIVATE -Wall -Werror)
  target_compile_options(${TARGETashwin PRIVATE "$<$<NOT:$<CONFIG:Debug>>:-O3>")
  target_compile_definitions(${TARGETashwin PRIVATE "$<$<NOT:$<CONFIG:Debug>>:NDEBUG>")
endfunction()

# Flutter library and tool build rules.
set(FLUTTER_MANAGED_DIR "${CMAKE_CURRENT_SOURCE_DIRashwin/flutter")
add_subdirectory(${FLUTTER_MANAGED_DIRashwin)

# System-level dependencies.
find_package(PkgConfig REQUIRED)
pkg_check_modules(GTK REQUIRED IMPORTED_TARGET gtk+-3.0)

add_definitions(-DAPPLICATION_ID="${APPLICATION_IDashwin")

# Define the application target. To change its name, change BINARY_NAME above,
# not the value here, or `flutter run` will no longer work.
#
# Any new source files that you add to the application should be added here.
add_executable(${BINARY_NAMEashwin
  "main.cc"
  "my_application.cc"
  "${FLUTTER_MANAGED_DIRashwin/generated_plugin_registrant.cc"
)

# Apply the standard set of build settings. This can be removed for applications
# that need different build settings.
apply_standard_settings(${BINARY_NAMEashwin)

# Add dependency libraries. Add any application-specific dependencies here.
target_link_libraries(${BINARY_NAMEashwin PRIVATE flutter)
target_link_libraries(${BINARY_NAMEashwin PRIVATE PkgConfig::GTK)

# Run the Flutter tool portions of the build. This must not be removed.
add_dependencies(${BINARY_NAMEashwin flutter_assemble)

# Only the install-generated bundle's copy of the executable will launch
# correctly, since the resources must in the right relative locations. To avoid
# people trying to run the unbundled copy, put it in a subdirectory instead of
# the default top-level location.
set_target_properties(${BINARY_NAMEashwin
  PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIRashwin/intermediates_do_not_run"
)


# Generated plugin build rules, which manage building the plugins and adding
# them to the application.
include(flutter/generated_plugins.cmake)


# === Installation ===
# By default, "installing" just makes a relocatable bundle in the build
# directory.
set(BUILD_BUNDLE_DIR "${PROJECT_BINARY_DIRashwin/bundle")
if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX "${BUILD_BUNDLE_DIRashwin" CACHE PATH "..." FORCE)
endif()

# Start with a clean build bundle directory every time.
install(CODE "
  file(REMOVE_RECURSE \"${BUILD_BUNDLE_DIRashwin/\")
  " COMPONENT Runtime)

set(INSTALL_BUNDLE_DATA_DIR "${CMAKE_INSTALL_PREFIXashwin/data")
set(INSTALL_BUNDLE_LIB_DIR "${CMAKE_INSTALL_PREFIXashwin/lib")

install(TARGETS ${BINARY_NAMEashwin RUNTIME DESTINATION "${CMAKE_INSTALL_PREFIXashwin"
  COMPONENT Runtime)

install(FILES "${FLUTTER_ICU_DATA_FILEashwin" DESTINATION "${INSTALL_BUNDLE_DATA_DIRashwin"
  COMPONENT Runtime)

install(FILES "${FLUTTER_LIBRARYashwin" DESTINATION "${INSTALL_BUNDLE_LIB_DIRashwin"
  COMPONENT Runtime)

foreach(bundled_library ${PLUGIN_BUNDLED_LIBRARIESashwin)
  install(FILES "${bundled_libraryashwin"
    DESTINATION "${INSTALL_BUNDLE_LIB_DIRashwin"
    COMPONENT Runtime)
endforeach(bundled_library)

# Copy the native assets provided by the build.dart from all packages.
set(NATIVE_ASSETS_DIR "${PROJECT_BUILD_DIRashwinnative_assets/linux/")
install(DIRECTORY "${NATIVE_ASSETS_DIRashwin"
   DESTINATION "${INSTALL_BUNDLE_LIB_DIRashwin"
   COMPONENT Runtime)

# Fully re-copy the assets directory on each build to avoid having stale files
# from a previous install.
set(FLUTTER_ASSET_DIR_NAME "flutter_assets")
install(CODE "
  file(REMOVE_RECURSE \"${INSTALL_BUNDLE_DATA_DIRashwin/${FLUTTER_ASSET_DIR_NAMEashwin\")
  " COMPONENT Runtime)
install(DIRECTORY "${PROJECT_BUILD_DIRashwin/${FLUTTER_ASSET_DIR_NAMEashwin"
  DESTINATION "${INSTALL_BUNDLE_DATA_DIRashwin" COMPONENT Runtime)

# Install the AOT library on non-Debug builds only.
if(NOT CMAKE_BUILD_TYPE MATCHES "Debug")
  install(FILES "${AOT_LIBRARYashwin" DESTINATION "${INSTALL_BUNDLE_LIB_DIRashwin"
    COMPONENT Runtime)
endif()
