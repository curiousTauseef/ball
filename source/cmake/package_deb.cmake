set(CPACK_GENERATOR "DEB")

SET(CMAKE_PROJECT_NAME QuEasy)
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "someone")
set(CPACK_DEBIAN_PACKAGE_VERSION "1.0-alpha3")
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "amd64")
SET(CPACK_DEBIAN_PACKAGE_DEPENDS "libqt4-core (>= 4.2.0), libqt4-gui (>= 4.2.0), libc6, libstdc++6 (>=4.3)")
SET(CPACK_DEBIAN_PACKAGE_SECTION "Science")
SET(CPACK_DEBIAN_PACKAGE_DESCRIPTION "QuEasy - A Toolbox for Automated QSAR Model Construction and Validation")


INCLUDE(CPack)

INSTALL(DIRECTORY APPLICATIONS/QuEasyViz/images/ DESTINATION share/QuEasy/images/)
INSTALL(PROGRAMS APPLICATIONS/QuEasyViz/QuEasyViz DESTINATION share/QuEasy/)
INSTALL(PROGRAMS APPLICATIONS/QuEasyRun/QuEasyRun DESTINATION share/QuEasy/)

INSTALL(DIRECTORY ../doc/QuEasyViz/ DESTINATION share/QuEasy/doc/QuEasyViz/)
INSTALL(DIRECTORY ../data/QSAR/ DESTINATION share/QuEasy/data/)

INSTALL(FILES cmake/QuEasy-license.txt DESTINATION . RENAME share/QuEasy/License.txt)
SET(CPACK_DEBIAN_FILE_LICENCE share/QuEasy/License.txt)

# add start script
file(WRITE cmake/QuEasyViz "/usr/share/QuEasy/QuEasyViz")
file(WRITE cmake/QuEasyRun "/usr/share/QuEasy/QuEasyRun $1")
INSTALL(PROGRAMS cmake/QuEasyViz DESTINATION bin/)
INSTALL(PROGRAMS cmake/QuEasyRun DESTINATION bin/)

