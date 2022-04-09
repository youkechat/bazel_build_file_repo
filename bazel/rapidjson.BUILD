load("@rules_cc//cc:defs.bzl", "cc_library")

licenses(["notice"])  # Apache 2

cc_library(
    name = "rapidjson",
    hdrs = glob(["include/rapidjson/**/*.h"]),
    defines = ["RAPIDJSON_HAS_STDSTRING=1"],
    strip_include_prefix = "include",
    includes = ["include"],
    visibility = ["//visibility:public"],
    #visibility = ["@io_opencensus_cpp//opencensus/exporters/trace/zipkin:__pkg__"],
)
