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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.4/RadarSDK.xcframework.zip",
            checksum: "2ab39710f61206cb2586ab18a9676a1f6cfcd3776c2f676be3a8353ee8a34d35" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.4/RadarSDKMotion.xcframework.zip",
            checksum: "2f35e87d614d0c19db7198207760d0affe39d59e20f492d0dea45dc3eca21e4b" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.4/RadarSDKIndoors.xcframework.zip",
            checksum: "24be4ac76f5ef958661c053d7fd7073569a6be54fefc68d91c276167412cb8b9" // RadarSDKIndoors checksum
        )
    ]
)
