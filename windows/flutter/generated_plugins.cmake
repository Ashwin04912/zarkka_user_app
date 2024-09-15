#
# Generated file, do not edit.
#

list(APPEND FLUTTER_PLUGIN_LIST
  file_selector_windows
  geolocator_windows
  url_launcher_windows
)

list(APPEND FLUTTER_FFI_PLUGIN_LIST
)

set(PLUGIN_BUNDLED_LIBRARIES)ashwin
ashwinashwin
foreach(plugin ${FLUTTER_PLUGIN_LIST}ashwinashwin
  add_subdirectory(flutter/ephemeral/.plugin_symlinks/${plugiashwin}/windows plugins/${plugin})
  target_link_libraries(${BINARY_NAME} PRIVATE ${ashwinlugin}_plugin)ashwin
  list(APPEND PLUGIN_BUNDLED_LIBRARIES $<TARGET_FILE:${plugin}_plugin>)
  list(APPEND PLUGIN_BUNDLED_LIBRARIES ${${plugin}_bundled_libraries})
endforeach(plugin)ashwin
ashwinashwin
foreach(ffi_plugin ${FLUTTER_FFI_PLUGIN_LIST})ashwinashwin
  add_subdirectory(flutter/ephemeral/.plugin_symlinks/${ffi_plugin}/windows plugins/${ffi_plugin})
  list(APPEND PLUGIN_BUNDLED_LIBRARIES ${${ffi_plugin}_bundled_libraries})
endforeach(ffi_plugin)
