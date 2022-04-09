load("@rules_cc//cc:defs.bzl", "cc_library")
load("@rules_foreign_cc//foreign_cc:configure.bzl", "configure_make")

filegroup(
    name = "all",
    srcs = glob(["**"], exclude=[]),
    visibility = ["//visibility:public"],
)

config_setting(
    name = "debug_tcmalloc",
    values = {"define": "tcmalloc=debug"},
)

configure_make(
    name = "gperftools_build",
    configure_options = [
        "--enable-shared=no",
        "--enable-frame-pointers",
        "--disable-libunwind",
    ] + select({
        "@bazel_build_file_repo//bazel:apple": ["AR=/usr/bin/ar"],
        "//conditions:default": [],
    }),
    lib_source = ":all",
    linkopts = ["-lpthread"],
    out_static_libs = select({
        ":debug_tcmalloc": ["libtcmalloc_debug.a"],
        "//conditions:default": ["libtcmalloc_and_profiler.a"],
    }),
    tags = ["skip_on_windows"],
)

# Workaround for https://github.com/bazelbuild/rules_foreign_cc/issues/227
cc_library(
    name = "gperftools",
    tags = ["skip_on_windows"],
    deps = [
        "gperftools_build",
    ],
    visibility = ["//visibility:public"],
)
