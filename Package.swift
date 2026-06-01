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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0-beta.4/RadarSDK.xcframework.zip",
            checksum: "cce3e85572f875c89af7bb32736b888914c5af7e7c3e438cab1dafc0c38085e9" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0-beta.4/RadarSDKMotion.xcframework.zip",
            checksum: "41597af8fc0669caa4177ce65c52f9bee711c2058f82aaefef9eea1f5f812a0a" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0-beta.4/RadarSDKIndoors.xcframework.zip",
            checksum: "754177bc64ad8e196052e59574ec4a898b885d2f3bd61010ee81c3ec812cd6f7" // RadarSDKIndoors checksum
        )
    ]
)
