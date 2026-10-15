// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v15)
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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.44.0/RadarSDK.xcframework.zip",
            checksum: "4d14343e96e4ea69704cfb4d7a398c6c2b7015f0d9a05d74d818bc0f3d3bb785" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.44.0/RadarSDKMotion.xcframework.zip",
            checksum: "4ba49df815ed480ae18aa9cd100fc005a2f9d4adee7015515d27cdf0853e6a96" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.44.0/RadarSDKIndoors.xcframework.zip",
            checksum: "2ef7d73b837af91133c650a006012b530025af571a8cea448287b4d0f5ce1a20" // RadarSDKIndoors checksum
        )
    ]
)
