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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.0/RadarSDK.xcframework.zip",
            checksum: "f1cae9ea3cdb829497fa70dcb3f757ce040dfe3ac53533643345d94b7b1dd3a9" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.0/RadarSDKMotion.xcframework.zip",
            checksum: "64e9a2e8faf827a55c1dcc85f73d347242117fbeaf27feb2be7693886c99b6fa" // RadarSDKMotion checksum
        ),
    ]
)
