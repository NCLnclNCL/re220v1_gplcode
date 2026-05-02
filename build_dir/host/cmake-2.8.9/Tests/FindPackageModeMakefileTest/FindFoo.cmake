
find_library(FOO_LIBRARY NAMES foo HINTS "/home/tp-link-hm/work/ipf_plm/ipv6_three_moed_merge/iplatform/board/model_mtk_mt76xx/gplcode/build_dir/host/cmake-2.8.9/Tests/FindPackageModeMakefileTest" )
find_path(FOO_INCLUDE_DIR NAMES foo.h HINTS "/home/tp-link-hm/work/ipf_plm/ipv6_three_moed_merge/iplatform/board/model_mtk_mt76xx/gplcode/build_dir/host/cmake-2.8.9/Tests/FindPackageModeMakefileTest" )

set(FOO_LIBRARIES ${FOO_LIBRARY})
set(FOO_INCLUDE_DIRS "${FOO_INCLUDE_DIR}"  "/some/path/with a space/include" )

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Foo  DEFAULT_MSG  FOO_LIBRARY FOO_INCLUDE_DIR )
