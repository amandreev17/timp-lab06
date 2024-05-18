include(InstallRequiredSystemLibraries)

set(CPACK_PACKAGE_CONTACT a_m_andreev2005@mail.ru)

set(CPACK_PACKAGE_VERSION_MAJOR \${SOLVER_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR \${SOLVER_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH \${SOLVER_VERSION_PATCH})
set(CPACK_PACKAGE_VERSION \${SOLVER_VERSION})

set(CPACK_RESOURCE_FILE_LICENSE \${CMAKE_CURRENT_SOURCE_DIR}/LICENSE)
set(CPACK_RESOURCE_FILE_README \${CMAKE_CURRENT_SOURCE_DIR}/README.md)



set(CPACK_RPM_PACKAGE_NAME "solver-devel")
set(CPACK_RPM_PACKAGE_LICENSE "MIT")
set(CPACK_RPM_PACKAGE_GROUP "solver")
set(CPACK_RPM_CHANGELOG_FILE \${CMAKE_CURRENT_SOURCE_DIR}/ChangeLog.md)
set(CPACK_RPM_PACKAGE_RELEASE 1)

set(CPACK_DEB_COMPONENT_INSTALL ON)

set(CPACK_DEBIAN_PACKAGE_NAME "AppSolver")
set(CPACK_DEBIAN_PACKAGE_PREDEPENDS "cmake >= 3.0")
set(CPACK_DEBIAN_PACKAGE_RELEASE 1)
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "all")

set(CPACK_DMG_VOLUME_NAME "solverOS")
set(CPACK_OSX_PACKAGE_VERSION 10.5)
set(CPACK_WIX_LICENSE_RTF ${CMAKE_CURRENT_SOURCE_DIR}/LICENSE.txt)

include(CPack)
