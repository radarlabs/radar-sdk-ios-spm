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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.6/RadarSDK.xcframework.zip",
            checksum: "3256d76cc69399406664f0af7e0ddf6a412732d827c64cca007f8d75d5ea4440" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.6/RadarSDKMotion.xcframework.zip",
            checksum: "b2eb81201dfa2a5b05ba9aa08fe1ca92cdc73e7a5082b505dd76d79feb5aae20" // RadarSDKMotion checksum
        ),
    ]
)
