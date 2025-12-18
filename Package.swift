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
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.25.0-beta.2/RadarSDK.xcframework.zip",
            checksum: "e1bc2f0b86abfc273b72409a42866c212bedced63f32c1e0bc3407f4512da2d5" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.25.0-beta.2/RadarSDKMotion.xcframework.zip",
            checksum: "23597d31d68a64b6572e3c1e93f63c2bc8c7e4d6a5c26839fb738a5855b01945" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.25.0-beta.2/RadarSDKIndoors.xcframework.zip",
            checksum: "925993a5fea3b9f490db87eb352bf02631c291ee58d234e3c394d8fb6c97cee2" // RadarSDKIndoors checksum
        )
    ]
)
