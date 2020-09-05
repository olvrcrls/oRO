# Install script for directory: C:/JinRO/rA-JinRO-29082020/rathena

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/JinRO/rA-JinRO-29082020/rathena/out/build/x64-Debug (default)/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntime_basex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "C:/JinRO/rA-JinRO-29082020/rathena/athena-start"
    "C:/JinRO/rA-JinRO-29082020/rathena/charserv.bat"
    "C:/JinRO/rA-JinRO-29082020/rathena/dbghelp.dll"
    "C:/JinRO/rA-JinRO-29082020/rathena/libmysql.dll"
    "C:/JinRO/rA-JinRO-29082020/rathena/LICENSE"
    "C:/JinRO/rA-JinRO-29082020/rathena/logserv.bat"
    "C:/JinRO/rA-JinRO-29082020/rathena/mapserv.bat"
    "C:/JinRO/rA-JinRO-29082020/rathena/pcre3.dll"
    "C:/JinRO/rA-JinRO-29082020/rathena/README.txt"
    "C:/JinRO/rA-JinRO-29082020/rathena/runserver.bat"
    "C:/JinRO/rA-JinRO-29082020/rathena/serv.bat"
    "C:/JinRO/rA-JinRO-29082020/rathena/zlib1.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntime_basex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/conf" TYPE DIRECTORY FILES "C:/JinRO/rA-JinRO-29082020/rathena/conf/" REGEX "/[\\\\.]svn$" EXCLUDE REGEX "/conf\\/import\\-tmpl$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntime_basex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/db" TYPE DIRECTORY FILES "C:/JinRO/rA-JinRO-29082020/rathena/db/" REGEX "/[\\\\.]svn$" EXCLUDE REGEX "/conf\\/import\\-tmpl$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntime_basex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/doc" TYPE DIRECTORY FILES "C:/JinRO/rA-JinRO-29082020/rathena/doc/" REGEX "/[\\\\.]svn$" EXCLUDE REGEX "/conf\\/import\\-tmpl$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntime_basex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(MAKE_DIRECTORY "${ENV}${CMAKE_INSTALL_PREFIX}/log")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntime_basex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/npc" TYPE DIRECTORY FILES "C:/JinRO/rA-JinRO-29082020/rathena/npc/" REGEX "/[\\\\.]svn$" EXCLUDE REGEX "/conf\\/import\\-tmpl$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntime_basex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/sql-files" TYPE DIRECTORY FILES "C:/JinRO/rA-JinRO-29082020/rathena/sql-files/" REGEX "/[\\\\.]svn$" EXCLUDE REGEX "/conf\\/import\\-tmpl$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntime_basex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools" TYPE DIRECTORY FILES "C:/JinRO/rA-JinRO-29082020/rathena/tools/" REGEX "/[\\\\.]svn$" EXCLUDE REGEX "/conf\\/import\\-tmpl$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntime_templatesx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("C:/JinRO/rA-JinRO-29082020/rathena/out/build/x64-Debug (default)/InstallTemplates.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/JinRO/rA-JinRO-29082020/rathena/out/build/x64-Debug (default)/3rdparty/cmake_install.cmake")
  include("C:/JinRO/rA-JinRO-29082020/rathena/out/build/x64-Debug (default)/src/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/JinRO/rA-JinRO-29082020/rathena/out/build/x64-Debug (default)/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
