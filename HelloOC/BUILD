# load ios application rule
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
# load build in objc_library rule 
load("@rules_cc//cc:defs.bzl", "objc_library")

load(
    "@rules_xcodeproj//xcodeproj:defs.bzl",
    "top_level_target",
    "xcodeproj",
)

# 源代码的库
objc_library(
    # 名字随意取
    name = "HelloWorldOC_source",
    srcs = [
        # 这里可以全部单独列出来，也可以使用*.m这样的通配符方式
        "Source/AppDelegate.m",
        "Source/SceneDelegate.m",
        "Source/ViewController.m",
        "Source/main.m",
    ],
    hdrs = glob(["Source/*.h"]),
    # 资源文件
    data = [
        "Source/Base.lproj/Main.storyboard",
        "Source/Base.lproj/LaunchScreen.storyboard",
    ],
    deps = []
)

# 生成ipa，bazel build //BUILD所在文件夹名称:ios_application的名称
# bazel build //HelloOC:My-HelloOC-app
# 模拟器运行，bazel run //BUILD所在文件夹名称:ios_application的名称
# bazel run //HelloOC:My-HelloOC-app
ios_application(
    # 名字随便起，用于生成ipa使用
    name = "My-HelloOC-app",
    # 这个bundle_id一定要与Info.plist里的一致
    bundle_id = "studyBazel.helloOC.aa",
    # 支持的版本
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = ["Source/Info.plist"],
    launch_storyboard = "Source/Base.lproj/LaunchScreen.storyboard",
    app_icons = glob(["Source/Assets.xcassets/AppIcon.appiconset/*.png"])
         + glob(["Source/Assets.xcassets/AppIcon.appiconset/*.json"]),
    # 支持的iOS最小版本
    minimum_os_version = "13.0",
    # provisioning_profile = "<your_profile_name>.mobileprovision", # Uncomment and set your own profile.
    visibility = ["//visibility:public"],
    # 依赖的源代码
    deps = [":HelloWorldOC_source"],
)

# 这里是为了生存Xcodeproj文件
# bazel run //BUILD所在文件夹名称:xcodeproj的名称，会生成一个xxx.xcodeproj的文件
# bazel run //HelloOC:my_xcodeproj
xcodeproj(
    name = "my_xcodeproj",
    build_mode = "bazel",
    # 生成的xxx.codeproj的名称
    project_name = "My_helloOC",
    tags = ["manual"],
    top_level_targets = [
        top_level_target(
            # 要与ios_application里定义的名字一样
            ":My-HelloOC-app",
            target_environments = ["simulator"],
        ),
    ],
)
