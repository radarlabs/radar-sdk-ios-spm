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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0/RadarSDK.xcframework.zip",
            checksum: "814baf6c0792b214f3292c1e09602f495375efa7fac432ea97c32469e7f7ebd1" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0/RadarSDKMotion.xcframework.zip",
            checksum: "a4d0553c62059735aecaa3690f459e9e9b9aaabf4008f71940193ede3ad9b32a" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.0/RadarSDKIndoors.xcframework.zip",
            checksum: "6ab3cf4e7dbbbedbe4d00b056d7c6e6b3c04435a1648b1ead62ece860e7678fc" // RadarSDKIndoors checksum
        )
    ]
)
