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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.3-beta.2/RadarSDK.xcframework.zip",
            checksum: "ee61c6ef672a40d7d89c82a94782ba6bbfa9a555cc44a0985de4773b86729e4f" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.3-beta.2/RadarSDKMotion.xcframework.zip",
            checksum: "863e28b2d17a0b1665b8e7e90e4d84d716ab30c8ad9d9ae064d28a88b6c78a5c" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.3-beta.2/RadarSDKIndoors.xcframework.zip",
            checksum: "cdb9954f8dc63dbe0fb0f7f687a74f979eaecf020d5d3530cd300d0174e05c1f" // RadarSDKIndoors checksum
        )
    ]
)
