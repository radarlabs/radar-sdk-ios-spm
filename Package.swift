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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.4/RadarSDK.xcframework.zip",
            checksum: "b5dfe94af921a325ebcac100e94ecfb6ecbac8fb44b8579c84ecfb71cb9980cc" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.4/RadarSDKMotion.xcframework.zip",
            checksum: "34b9c606bee2c4b142425ae66122b61058a95a067cbcf575689e9270aed4b3a6" // RadarSDKMotion checksum
        ),
    ]
)
