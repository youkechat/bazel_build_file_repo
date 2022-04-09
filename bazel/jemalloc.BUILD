load("@rules_cc//cc:defs.bzl", "cc_library")
load("@rules_foreign_cc//foreign_cc:configure.bzl", "configure_make")

filegroup(
    name = "all",
    srcs = glob(["**"], exclude=[]),
    visibility = ["//visibility:public"],
)

configure_make(
    name = "jemalloc_build",
    autogen = True,
    configure_in_place = True,
    lib_source = ":all",
    out_static_libs = ["libjemalloc.a"],
    targets = ["install_lib_static"],
)

# Workaround for https://github.com/bazelbuild/rules_foreign_cc/issues/227
cc_library(
    name = "jemalloc",
    deps = [
        "jemalloc_build",
    ],
    visibility = ["//visibility:public"],
)
