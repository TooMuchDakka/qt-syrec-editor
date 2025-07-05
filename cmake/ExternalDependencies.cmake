#include(FetchContent)
#set(EXTERNAL_DEPENDENCY_PKGS "")

#set(MQT_SYREC_VERSION 0.0.0 CACHE STRING "")
#set(MQT_SYREC_REV "<COMMIT>" CACHE STRING "")
#set(MQT_CORE_REPO_OWNER "cda-tum" CACHE STRING "")

#FetchContent_Declare(
	#mqt-syrec
	#GIT_REPOSITORY https://github.com/${MQT_SYREC_REPO_OWNER}/mqt-syrec.git
	#GIT_TAG ${MQT_SYREC_REV}
	#FIND_PACKAGE_ARGS ${MQT_SYREC_VERSION}
#)
#list(APPEND EXTERNAL_DEPENDENCY_PKGS mqt-syrec)

#FetchContent_MakeAvailable(${EXTERNAL_DEPENDENCY_PKGS})