include(InstallRequiredSystemLibraries)

set(CPACK_PACKAGE_CONTACT mihail_160505@@mail.ru)
set(CPACK_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_PACKAGE_NAME "solver")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "static C++ library for solver")
set(CPACK_PACKAGE_VENDOR "kuznetsovvvv")
set(CPACK_PACKAGE_PACK_NAME "solver-${PRINT_VERSION}")

set(CPACK_SOURCE_INSTALLED_DIRECTORIES 
  "${CMAKE_SOURCE_DIR}/solver_application; solver_application"
  "${CMAKE_SOURCE_DIR}/solver_lib; solver_lib"
  "${CMAKE_SOURCE_DIR}/formatter_ex_lib; formatter_ex_lib"
  "${CMAKE_SOURCE_DIR}/formatter_lib; formatter_lib")

set(CPACK_RESOURCE_FILE_README ${CMAKE_CURRENT_SOURCE_DIR}/README.md)

set(CPACK_SOURCE_GENERATOR "TGZ;ZIP")

set(CPACK_DEBIAN_PACKAGE_PREDEPENDS "cmake >= 3.0")
set(CPACK_DEBIAN_PACKAGE_RELEASE 1)

set(CPACK_DEBIAN_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "all")
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "solves equations")

set(CPACK_GENERATOR "DEB;RPM")

# Имя созданного пакета
set(CPACK_DMG_VOLUME_NAME "solverOS")
# Минимальная версия OSX
set(CPACK_OSX_PACKAGE_VERSION 10.5)
set(CPACK_WIX_LICENSE_RTF ${CMAKE_CURRENT_SOURCE_DIR}/LICENSE.txt)

set(CPACK_GENERATOR "DMG")

set(CPACK_RPM_PACKAGE_SUMMARY "solves equations")

include(CPack)
