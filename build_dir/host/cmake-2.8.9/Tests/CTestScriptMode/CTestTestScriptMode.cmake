# This script will be executed with ctest -S

# Check that the system name is determined correctly:
set(CMAKE_CMAKE_SYSTEM_NAME "Linux")

if (NOT "${CMAKE_SYSTEM_NAME}" STREQUAL "${CMAKE_CMAKE_SYSTEM_NAME}")
   message(FATAL_ERROR "Error: CMAKE_SYSTEM_NAME is \"${CMAKE_SYSTEM_NAME}\", but should be \"Linux\"")
endif(NOT "${CMAKE_SYSTEM_NAME}" STREQUAL "${CMAKE_CMAKE_SYSTEM_NAME}")

# this seems to be necessary, otherwise ctest complains that these 
# variables are not set:
set(CTEST_COMMAND "\"/home/tp-link-hm/work/ipf_plm/ipv6_three_moed_merge/iplatform/board/model_mtk_mt76xx/gplcode/build_dir/host/cmake-2.8.9/bin/ctest\"")
set(CTEST_SOURCE_DIRECTORY "/home/tp-link-hm/work/ipf_plm/ipv6_three_moed_merge/iplatform/board/model_mtk_mt76xx/gplcode/build_dir/host/cmake-2.8.9/Tests/CTestScriptMode/")
set(CTEST_BINARY_DIRECTORY "/home/tp-link-hm/work/ipf_plm/ipv6_three_moed_merge/iplatform/board/model_mtk_mt76xx/gplcode/build_dir/host/cmake-2.8.9/Tests/CTestScriptMode/")
