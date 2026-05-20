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
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0-beta.1/RadarSDK.xcframework.zip",
            checksum: "3e3d65dd8de7d6e17bcec71e70355813b62e82d20307f426b24d62184027f027" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0-beta.1/RadarSDKMotion.xcframework.zip",
            checksum: "56393842f8ce72da3332fe240f40f26124a4d0a1ec63b4e69764837b2e348801" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0-beta.1/RadarSDKIndoors.xcframework.zip",
            checksum: "a4018bee6d767a262c23ff50877f7d5a851e0962395cf51753f9d0eb81eb66d1" // RadarSDKIndoors checksum
        )
    ]
)
