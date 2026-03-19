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
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.28.0/RadarSDK.xcframework.zip",
            checksum: "bcb4be8a1d1cde91a6afedb4ad31e0654469b63a72ccda0d04adaf709ec0eb2d" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.28.0/RadarSDKMotion.xcframework.zip",
            checksum: "7426b61efac09f2f53a9216db4c475921a65af331a76c5fe9a2f4587db63940e" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.28.0/RadarSDKIndoors.xcframework.zip",
            checksum: "c6d29318b53bd7120dff37decd5afaaba8ea53c83f8cd90c279a87e4bd27f374" // RadarSDKIndoors checksum
        )
    ]
)
