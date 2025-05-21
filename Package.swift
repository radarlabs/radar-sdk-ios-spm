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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.5/RadarSDK.xcframework.zip",
            checksum: "ccab75f6c8035f7ce92e66087a7f829f9d35a8c8b171d4e55447b6d024e16fe8" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.21.5/RadarSDKMotion.xcframework.zip",
            checksum: "11ea42b7dcfebe1ccff67dbb15be2ce1fefee113b5e8be2463bf9f9d122c8c8e" // RadarSDKMotion checksum
        ),
    ]
)
