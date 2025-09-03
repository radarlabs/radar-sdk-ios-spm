// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
          .library(name: "RadarSDK", targets: ["RadarSDK", "_RadarStub"]),
          .library(name: "RadarSDKMotion", targets: ["RadarSDKMotion", "_RadarStub"]),
          .library(name: "RadarSDKIndoors", targets: ["RadarSDKIndoors", "_RadarStub"]),
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.1/RadarSDK.xcframework.zip",
            checksum: "b9692b57db4c0bbb8b20830764da21be20b1b06aeaaef4e87450979d08061729" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.1/RadarSDKMotion.xcframework.zip",
            checksum: "87be26373b903eb648d2c997dba676a9ca75949741b755ee979078281d28761c" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.1/RadarSDKIndoors.xcframework.zip",
            checksum: "33e4b770dc62ff393a494a51d2bd8e341bfa89cdce187df927aa8430812df1e8" // RadarSDKIndoors checksum
        )
    ]
)
