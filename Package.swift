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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.2/RadarSDK.xcframework.zip",
            checksum: "e26d9b7787b986a5a6fe7d496e71f0fe7dea1af021c0957789cfcb91234fab5e" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.2/RadarSDKMotion.xcframework.zip",
            checksum: "197de6e50b6e92e6477ecf823bf28bb614d8a0fbdf3c9014e749f31aeb3087ec" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.2/RadarSDKIndoors.xcframework.zip",
            checksum: "8c2c2b5664ba0c2dbd04eb43de95e34d2007849e073b7c9c3afed6d53bd117a9" // RadarSDKIndoors checksum
        )
    ]
)
