// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
          .library(name: "RadarSDK", targets: ["RadarSDK", "_RadarStub"]),
          .library(name: "RadarSDKMotion", targets: ["RadarSDKMotion", "_RadarStub"])
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.1/RadarSDK.xcframework.zip",
            checksum: "84b107e7bf77389d16c84a9cf9d48e6d983baaab1e9e4a5c3096f63229cc2684" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.1/RadarSDKMotion.xcframework.zip",
            checksum: "57f227a2dd6fa8346a4c3a46a30de1e7ebf2fe798d095f0996b42a84a356312e" // RadarSDKMotion checksum
        )
    ]
)
