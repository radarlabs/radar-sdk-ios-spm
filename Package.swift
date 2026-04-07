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
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.29.0/RadarSDK.xcframework.zip",
            checksum: "2ba79e003e86e29dcb390a02cf62904e8d418605dc310c23c4ea3590fa29b433" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.29.0/RadarSDKMotion.xcframework.zip",
            checksum: "522d9029fda8d3ba3f7288743839b9250f128131d086638d26b8d368602080ba" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.29.0/RadarSDKIndoors.xcframework.zip",
            checksum: "ea0b362d83bebe057133e7d6d915db9083df5896b037b1751bc1b53a98425b77" // RadarSDKIndoors checksum
        )
    ]
)
