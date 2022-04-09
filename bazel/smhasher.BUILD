load("@rules_foreign_cc//foreign_cc:defs.bzl", "cmake")

filegroup(
    name = "all",
    srcs = glob(["**"], exclude=[]),
    visibility = ["//visibility:public"],
)

cmake(
    name = "smhasher",
    cache_entries = {
        "CMAKE_VERBOSE_MAKEFILE" : "ON",
    },
    lib_source = ":all",
    out_include_dir = "include",
    out_static_libs = ["libSMHasherSupport.a"],
    build_data = ["@bazel_build_file_repo//bazel:smhasher_postfix"],
    #postfix_script = "tree . ; exit 1",
    #postfix_script = "cp $BUILD_TMPDIR/libSMHasherSupport.a $INSTALLDIR/lib && cd $EXT_BUILD_ROOT/external/smhasher && for file in $(ls {,**/}*.h); do cp --parents -rf $file $INSTALLDIR/include; done && cd -",
    #postfix_script = "/bin/bash $EXT_BUILD_ROOT/bazel/smhasher_postfix.sh",
    #targets = ["SMHasherSupport"],
    visibility = ["//visibility:public"],
)
