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
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.4/RadarSDK.xcframework.zip",
            checksum: "2fafb1d7a04fd540e4ff50a45883c666be3a7a3eae59dcbd2771219a5901ed0c" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.4/RadarSDKMotion.xcframework.zip",
            checksum: "5a0e04166482b59b5c1f24f7cb09b50c520e29d88a2160eca6044bcbc21aef42" // RadarSDKMotion checksum
        ),
    ]
)
