# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/stefan/espressifInstalation/esp-idf-v5.3.1/components/bootloader/subproject"
  "/home/stefan/Espressif/workspace/ESP32_DOIT_DEVKIT_V1/build/bootloader"
  "/home/stefan/Espressif/workspace/ESP32_DOIT_DEVKIT_V1/build/bootloader-prefix"
  "/home/stefan/Espressif/workspace/ESP32_DOIT_DEVKIT_V1/build/bootloader-prefix/tmp"
  "/home/stefan/Espressif/workspace/ESP32_DOIT_DEVKIT_V1/build/bootloader-prefix/src/bootloader-stamp"
  "/home/stefan/Espressif/workspace/ESP32_DOIT_DEVKIT_V1/build/bootloader-prefix/src"
  "/home/stefan/Espressif/workspace/ESP32_DOIT_DEVKIT_V1/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/stefan/Espressif/workspace/ESP32_DOIT_DEVKIT_V1/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/stefan/Espressif/workspace/ESP32_DOIT_DEVKIT_V1/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
