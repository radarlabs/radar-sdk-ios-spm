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
            checksum: "ce5e6defe281234b50a27c8331bd765e21b799eb4afbe8bf44542406b061ad24" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.0/RadarSDKMotion.xcframework.zip",
            checksum: "4f2123a7c4725a696ac4e100bb6e16e909209311665a201725b1987dc3b2a044" // RadarSDKMotion checksum
        ),
    ]
)
