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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0-beta.2/RadarSDK.xcframework.zip",
            checksum: "523eda7d28d176d11182252c2a1e7769aede165700ff79724ec1fc535ce371a5" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0-beta.2/RadarSDKMotion.xcframework.zip",
            checksum: "c42e914f5a2c3218dc420d52c9144f54d3720ba8ef5edfc8e07df9a6cced68ab" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0-beta.2/RadarSDKIndoors.xcframework.zip",
            checksum: "dea237740e7410df8a01c74821ef046d7b7942645def488f1f7b3ffc291ca0a3" // RadarSDKIndoors checksum
        )
    ]
)
